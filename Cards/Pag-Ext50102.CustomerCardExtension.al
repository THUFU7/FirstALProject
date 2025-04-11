namespace DefaultPublisher.DOS;

using Microsoft.Sales.Customer;

pageextension 50102 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        addafter("Name")
        {
            field("Tax Identification Number"; Rec."Tax Identification Number")
            {
                ApplicationArea = All;
                ToolTip = 'Tax Identification Number';
            }
        }
    }
}
