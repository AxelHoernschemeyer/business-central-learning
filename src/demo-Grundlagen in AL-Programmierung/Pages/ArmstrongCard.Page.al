page 50113 "Armstrong Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Armstrong Card';

    layout
    {
        area(Content)
        {

        }
    }

    trigger OnOpenPage()
    var
        Counter1, Counter2, PowerNumber, Number, Result : Integer;
        CounterText: Text[5];
        ResultList: List Of [Integer];
        ArmstrongNumbers, NewLine : Text;
        Ch10: char;
        Ch13: char;

    begin
        Ch10 := 10;
        Ch13 := 13;
        NewLine := Format(Ch10) + Format(Ch13);
        for Counter1 := 0 to 10000 do begin
            CounterText := Format(Counter1);
            Evaluate(PowerNumber, Copystr(CounterText, Strlen(CounterText), 1));
            Result += Power(Number, PowerNumber);
        end;

        If Result = Counter1 Then
            ResultList.Add(Result);
        Clear(Result);

        foreach Counter1 in ResultList do
            ArmstrongNumbers += NewLine + Format(Counter1);

        Message(ArmstrongNumbers);
    End;
}