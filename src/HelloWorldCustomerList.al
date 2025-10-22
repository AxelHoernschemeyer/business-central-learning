//pageextension 50100 CustomerCardExtension extends "Customer Card"
pageextension 50101 CustomerListExtension extends "Customer List"
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
