page 50101 DataTypesCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Date Types Card';

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

        }
    }

    trigger OnOpenPage()
    Begin
        Message('The value of %1 is %2', 'YesOrNo', YesOrNo);
        Message('The value of %1 is %2', Betrag, Betrag);
        Message('The value of %1 is %2', "Wann war es", "Wann war es");
        Message('The value of %1 is %2', "Welche Zeit", "Welche Zeit");
        Message('The value of %1 is %2', Beschreibung, Beschreibung);
        Message('The value of %1 is %2', Codenummer, Codenummer);
        Message('The value of %1 is %2', Ch, Ch);
        Message('The value of %1 is %2', Farboption, Farboption);
    End;

    var
        LoopNo: Integer;
        YesOrNo: Boolean;
        Betrag: Decimal;
        "Wann war es": Date;
        "Welche Zeit": Time;
        Beschreibung: Text[30];
        Codenummer: Code[10];
        Ch: Char;
        Farboption: Option Rot,Orange,Gelb,Grün,Blau,Violett;

}