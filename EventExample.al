page 50100 "Detyra1"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Shfaq mesazhin")
            {
                Caption = 'Shfaq mesazhin';

                trigger OnAction()
                begin
                    // Call the event publisher when the action is triggered
                    OnCustomerActionTriggered();
                end;
            }

        }

    }

    [IntegrationEvent(false, false)]
    procedure OnCustomerActionTriggered(line: Text[100])
    begin
        OnCustomerActionPerformed();
    end;



    event OnCustomerActionPerformed();
}