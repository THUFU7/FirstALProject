namespace DOS.DOS;

using Microsoft.Sales.Setup;

pageextension 50101 "BookNos Ext" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field(BookNos; Rec.BookNos)
            {
                ApplicationArea = All;
                ToolTip = 'BookNos';
            }
        }
    }
}
