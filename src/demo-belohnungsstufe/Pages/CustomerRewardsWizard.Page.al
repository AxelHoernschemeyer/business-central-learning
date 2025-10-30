page 50100 "Customer Rewards Wizard"
{
    // Specifies that this page will be a navigate page
    PageType = NavigatePage;
    Caption = 'Customer Rewards assisted setup guide';

    layout
    {
        area(Content)
        {
            group(MediaStandard)
            {
            }

            group(FirstPage)
            {
                Caption = '';
                Visible = FirstPageVisible;

                group("Welcome")
                {
                    Caption = 'Welcome';
                    Visible = FirstPageVisible;
                }

                group(Introduction)
                {
                }

                group("Terms")
                {
                }

                group("Terms2")
                {
                }
            }

            group(SecondPage)
            {
            }

            group(FinalPage)
            {
            }
        }
    }
    var
        FirstPageVisible: Boolean;

}