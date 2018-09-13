tableextension 50000 "MainAppExt" extends Customer
{
    fields
    {
        field(50000; "My new Field"; Code[20])
        {
            Caption = 'My new Field';
            DataClassification = ToBeClassified;
        }
        
    }
   
}