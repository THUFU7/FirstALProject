namespace DefaultPublisher.DOS;

using Microsoft.Sales.Customer;

tableextension 50100 CustomerExtension extends Customer
{
    fields
    {
        field(50000; "Tax Identification Number"; Text[15])
        {
            Caption = 'Tax Identification Number';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                FirstChar: Text[1];
                LastChar: Text[1];
                CustomerRec: Record Customer;
            begin
                if "Tax Identification Number" = '' then
                    Error('Tax Identification Number cannot be empty.');

                if StrLen("Tax Identification Number") <> 11 then
                    Error('Tax Identification Number must be 11 characters long.');

                FirstChar := CopyStr("Tax Identification Number", 1, 1);
                if (UpperCase(FirstChar) <> 'P') and (UpperCase(FirstChar) <> 'A') then
                    Error('The Tax Identification Number must start with the letter "P" or "A".');

                LastChar := UpperCase(CopyStr("Tax Identification Number", 11, 1));
                if not (LastChar in ['A' .. 'Z']) then
                    Error('The last character of the Tax Identification Number must be a letter.');

                CustomerRec.Reset();
                CustomerRec.SetRange("Tax Identification Number", "Tax Identification Number");
                if CustomerRec.FindFirst() and (CustomerRec."No." <> Rec."No.") then
                    Error('The Tax Identification Number "%1" is already assigned to another customer.', "Tax Identification Number");
            end;
        }
    }
}

