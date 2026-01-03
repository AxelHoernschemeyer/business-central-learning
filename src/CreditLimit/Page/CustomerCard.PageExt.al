pageextension 50130 CustomerCard extends "Customer Card"
{

    actions
    {
        addafter("F&unctions")
        {
            action(UpdateCreditLimit)
            {
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

    local procedure CallUpdateCreditLimit()
    var
        CreditLimitCalculated: Decimal;
        CreditLimitActual: Decimal;
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

    var
        AreYouSureQst: Label 'Möchten Sie %1 wirklich auf %2 setzen?';
        CreditLimitRoundTxt: Label 'Das Kreditlimit wurde auf %1 gerundet, um die Unternehmensrichtlinien zu erfüllen.';
        CreditLimitUpToDateTxt: Label 'Das Kreditlimit ist aktuell.';

}