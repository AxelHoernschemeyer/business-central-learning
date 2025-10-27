pageextension 50101 CustomerList extends "Customer List"
{
    actions
    {
        addfirst("&Customer")
        {
            action("Reward Levels")
            {
                ApplicationArea = All;
                Image = CustomerRating;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Open the list of reward levels.';

                trigger OnAction()
                var
                    CustomerRewardsExtMgt: Codeunit "Customer Rewards Ext Mgt";
                begin
                    If CustomerRewardsExtMgt.IsCustomerRewardsActivated then
                        CustomerRewardsExtMgt.OpenRewardsLevelPage
                    Else
                        CustomerRewardsExtMgt.OpenCustomerRewardsWizard;
                end;
            }
        }
    }
}