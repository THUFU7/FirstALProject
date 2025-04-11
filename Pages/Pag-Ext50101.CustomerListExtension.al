namespace DefaultPublisher.DOS;

using Microsoft.Sales.Customer;

pageextension 50103 "Customer List Extension" extends "Customer List"
{
    layout
    {
        addafter("Responsibility Center")
        {
            field("Tax Identification Number"; Rec."Tax Identification Number")
            {
                ApplicationArea = All;
                ToolTip = 'Tax Identification Number';
            }
        }
    }
}
