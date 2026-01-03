page 50120 "Customer Overview List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Overview";
    Caption = 'Customer Overview List';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry number.';
                }
                field("Customer No. "; Rec."Customer No. ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer number.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer name.';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the source code.';
                }
                field("Amount"; Rec."Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount.';
                }
                field("LastRunDate"; Rec."LastRunDate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the last run date.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Import Records")
            {
                ApplicationArea = All;
                Caption = 'Import Records';
                ToolTip = 'Import Records';
                Image = Import;

                trigger OnAction()
                var
                    CustomerOverview: Codeunit "Customer Overview Mgmt.";
                begin
                    CustomerOverview.Run();
                end;
            }
        }
    }
}