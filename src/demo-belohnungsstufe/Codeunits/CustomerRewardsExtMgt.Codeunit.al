codeunit 50101 "Customer Rewards Ext Mgt"
{
    EventSubscriberInstance = StaticAutomatic;

    // Determines if the extension is activated
    procedure IsCustomerRewardsActivated(): Boolean;
    var
        ActivationCodeInformation: Record "Activation Code Information";
    begin
        If not ActivationCodeInformation.FindFirst() then
            exit(false);

        If (ActivationCodeInformation."Date Activated" <= Today) and (Today <= ActivationCodeInformation."Expiration Date") then
            exit(true);
        exit(false);
    end;

    // Opens the Customer Rewards Assisted Setup Guide
    procedure OpenCustomerRewardsWizard();
    var
        CustomerRewardsWizard: Page "Customer Rewards Wizard";
    begin
        CustomerRewardsWizard.Runmodal();
    end;

    // Opens the Rewards Level page
    procedure OpenRewardsLevelPage();
    var
        RewardsLevelList: Page "Rewards Level List";
    begin
        RewardsLevelList.run();
    end;

    // Determines the corresponding reward level and returns it
    procedure GetRewardLevel(RewardPoints: Integer) RewardLevelTxt: Text;
    var
        RewardLevel: Record "Reward Level";
        MinRewardLevelPoints: Integer;
    begin
        RewardLevelTxt := NoRewardlevelTxt;

        if RewardLevel.IsEmpty() then
            exit;
        RewardLevel.SetRange("Minimum Reward Points", 0, RewardPoints);
        RewardLevel.Setcurrentkey("Minimum Reward Points"); // sorted in ascending order

        if not RewardLevel.Findfirst() Then
            exit;
        MinRewardLevelPoints := RewardLevel."Minimum Reward Points";

        If RewardPoints >= MinRewardLevelPoints then begin
            RewardLevel.Reset();
            RewardLevel.SetRange("Minimum Reward Points", MinRewardLevelPoints, RewardPoints);
            RewardLevel.SetCurrentKey("Minimum Reward Points"); // sorted in ascending order
            RewardLevel.FindLast();
            RewardLevelTxt := RewardLevel.Level;
        end;
    end;

    // Activates Customer Rewards if activation code is validated successfully
    procedure ActivateCutomerRewards(ActivationCode: Text): Boolean;
    var
        ActivationCodeInformation: Record "Activation Code Information";
    begin
        // raise event
        OnGetActivationCodeStatusFromServer(ActivationCode);
        exit(ActivationCodeInformation.get(ActivationCode));
    end;

    // publishes event
    [IntegrationEvent(false, false)]
    procedure OnGetActivationCodeStatusFromServer(ActivationCode: Text);
    begin
    end;

    // Subscribes to OnGetActivationCodeStatusFromServer event and handle it when the event is raised 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Customer Rewards Ext Mgt", 'OnGetActivationCodeStatusFromServer', '', false, false)]
    local procedure OnGetActivationCodeStatusFromServerSubscriber(ActivationCode: Text);
    var
        ActivationCodeInfo: Record "Activation Code Information";
        ResponseText: Text;
        Result: JsonToken;
        JsonResponse: JsonToken;
    begin
        if not CanHandle() then
            exit; // use the mock 

        // Get response from external service and update activation code information if successful
        if (GetHttpResponse(ActivationCode, ResponseText)) then begin
            JsonResponse.ReadFrom(ResponseText);

            if (JsonResponse.SelectToken('ActivationResponse', Result)) then
                if (Result.AsValue().AsText() = 'Success') then begin
                    if (ActivationCodeInfo.findFirst()) then
                        ActivationCodeInfo.Delete();
                    ActivationCodeInfo.Init();
                    ActivationCodeInfo."Activation Code" := ActivationCode;
                    ActivationCodeInfo."Date Activated" := Today;
                    ActivationCodeInfo."Expiration Date" := calcdate('<1Y>', Today);
                    ActivationCodeInfo.Insert();
                end;
        end;
    end;

    // Helper method to make calls to a service to validate activation code
    local procedure GetHttpResponse(ActivationCode: Text; var ResponseText: Text): Boolean;
    begin
        // You will typically make external calls / http requests to your service to validate the ativation code 
        // here but for the sample extension we simply return a seccessful dummy response
        if ActivationCode = '' then
            exit(false);

        ResponseText := DummySucessResponseText;
        exit(true);
    end;

    // Subscribes to the OnAfterReleaseSalesDoc event an inreases reward points for the sell to customer in posted sales order
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnAfterReleaseSalesDoc', '', false, false)]
    local procedure OnAfterReleaseSalesDocSubscriber(var SalesHeader: Record "Sales Header"; PreviewMode: Boolean; LinesWereModified: Boolean);
    var
        Customer: Record Customer;
    begin
        if SalesHeader.Status <> SalesHeader.Status::Released then
            exit;

        Customer.Get(SalesHeader."Sell-to Customer No.");
        Customer.RewardPoints += 1; // Add a point for each new sales order
        Customer.Modify();
    end;

    // Checks if the current codeunit is allowed to handle Customer Rewards Activation requests than a mock.
    local procedure CanHandle(): Boolean;
    var
        CustomerRewardsMgtSetup: Record "Customer Rewards Mgt Setup";
    begin
        if CustomerRewardsMgtSetup.Get() then
            exit(CustomerRewardsMgtSetup."Cust. Rew. Ext. Mgt. Cod. ID" = Codeunit::"Customer Rewards Ext Mgt");
        exit(false);
    end;

    var
        DummySuccessResponseTxt: Label '{"ActivationResponse": "Success"}', Locked = true;
        NoRewardlevelTxt: TextConst ENU = 'NONE';
}

