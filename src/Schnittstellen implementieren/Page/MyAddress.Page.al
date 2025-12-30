page 65200 MyAddress
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(WhatsTheAddress)
            {
                Caption = 'What''s the Address?';
                ApplicationArea = All;
                ToolTip = 'Select the address';
                Image = Addresses;

                trigger OnAction()
                var
                    iAddressProvider: Interface IAddressProvider;
                begin
                    AddressproviderFactory(iAddressProvider);
                    Message(iAddressProvider.GetAddress());
                end;
            }

            action(SendToHome)
            {
                Caption = 'Send to Home';
                ApplicationArea = All;
                ToolTip = 'Set the interface implementation to Home.';
                Image = Home;
                trigger OnAction()
                begin
                    sendTo := sendTo::Private;
                end;
            }

            action(SentToWork)
            {
                Caption = 'Send to Work';
                ApplicationArea = All;
                ToolTip = 'Set the interface implementation to Work.';
                Image = WorkCenter;

                trigger OnAction()
                begin
                    sendTo := sendTo::Company;
                end;
            }
        }
    }

    local procedure AddressproviderFactory(var iAddressProvider: Interface IAddressProvider)
    var
        CompanyAddressProvider: Codeunit CompanyAddressProvider;
        PrivateAddressProvider: Codeunit PrivateAddressProvider;
    begin
        if sendTo = sendTo::Company then
            iAddressProvider := CompanyAddressProvider;
        If sendTo = sendTo::Private then
            iAddressProvider := PrivateAddressProvider;
    end;

    var
        sendTo: enum SendTo;

}