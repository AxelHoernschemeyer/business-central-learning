pageextension 50130 CustomerCard extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here 
    }

    actions
    {
        // Add changes to page actions here
        addafter("F&unctions")
        {
            action(UpdateCreditLimit)
            {
                ApplicationArea = All;
                Caption = 'Update Credit Limit';
                ToolTip = 'Update Credit Limit';
                Image = CalculateCost;

                trigger OnAction()
                begin
                    CallUpdateCreditLimit();
                end;
            }
        }
    }
    var
        AreYouSureQst: Label 'Are you shure that you want to set the %1 to %2?'; // %1=Credit Limit Caption, %2=Calculated Credit Limit
        CreditLimitRoundTxt: Label 'The credit limit was rounded to %1 to comply with company policies.'; // %1 is new Credit Limit value
        CreditLimitUpToDateTxt: Label 'The credit limit is up to date.';

    local procedure CallUpdateCreditLimit()
    var
        CreditLimitCalculated, CreditLimitActual : Decimal;
    begin
        CreditLimitCalculated := rec.CalculateCreditLimit();
        If CreditLimitCalculated = rec."Credit Limit (LCY)" then begin
            Message(CreditLimitUpToDateTxt);
            exit;
        end;
        If GuiAllowed() then
            If not Confirm(AreYouSureQst, false, rec.FieldCaption("Credit Limit (LCY)"), CreditLimitCalculated) then
                exit;

        CreditLimitActual := CreditLimitCalculated;
        Rec.UpdateCreditLimit(CreditLimitActual);
        If CreditLimitActual <> CreditLimitCalculated then
            Message(CreditLimitRoundTxt, CreditLimitActual);
    end;
}