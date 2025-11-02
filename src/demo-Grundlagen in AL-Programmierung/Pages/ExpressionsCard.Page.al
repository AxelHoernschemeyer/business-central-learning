page 50111 "Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';

                field(Wert1; Wert1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Geben Sie den ersten Wert ein.';
                    Caption = 'Erster Wert';

                }

                field(Wert2; Wert2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Geben Sie den zweiten Wert ein.';
                    Caption = 'Zweiter Wert';
                }
            }
            group(Output)
            {
                Caption = 'Output';

                field(Result; Ergebnis)
                {
                    ApplicationArea = All;
                    ToolTip = 'Ergebnis der Vergleichsoperation.';
                    Caption = 'Ergebnis';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        Wert1: Integer;
        Wert2: Integer;
        Ergebnis: Boolean;


}