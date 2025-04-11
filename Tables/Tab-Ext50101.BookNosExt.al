namespace DefaultPublisher.DOS;

using Microsoft.Sales.Setup;
using Microsoft.Foundation.NoSeries;

tableextension 50101 "BookNos Ext" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; BookNos; Code[20])
        {
            Caption = 'BookNos';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
    }
}
