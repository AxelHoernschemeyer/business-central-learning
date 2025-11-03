page 50112 "Statements Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statements Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    Caption = 'Difficulty';
                    ToolTip = 'Select the difficulty.';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }

            group(Output)
            {
                Caption = 'Output';
                field(Suggestion; Suggestion)
                {
                    Caption = 'Suggestion';
                    ToolTip = 'Suggestion';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Level; Level)
                {
                    Caption = 'Level';
                    ToolTip = 'Level';
                    ApplicationArea = All;
                    Editable = false;
                }

            }
        }
    }

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    local procedure GetSuggestion()
    begin
        Level := '';
        Suggestion := '';

        Case Difficulty of
            1 .. 5:
                Begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                End;
            6 .. 8:
                Begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                End;
            9 .. 10:
                Begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                End;
        End;
    end;
}