pageextension 50148 CustomerCardExtension extends "Customer Card"
{
    actions
    {
        addlast(Processing)
        {
            action(ShowHelloWorld)
            {
                ApplicationArea = All;
                Caption = 'Hello World';
                Image = Info;
                trigger OnAction()
                begin
                    Message('Hello, Axel! Willkommen in AL.');
                end;
            }
        }
    }
}
