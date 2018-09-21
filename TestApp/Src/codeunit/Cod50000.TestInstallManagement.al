codeunit 50000 "TestInstallManagement"
{
    Subtype = Install;

    //Add the codeunit to the table for running it during the test run
    trigger OnInstallAppPerCompany()
    begin
        RegisterTestCodeunit(50001);
    end;

    procedure RegisterTestCodeunit(CodeunitId:Integer)
    var
        CALTestEnabledCodeunit : record "CAL Test Enabled Codeunit";
    begin
        CALTestEnabledCodeunit.Init();
        CALTestEnabledCodeunit."No." := 0;
        CALTestEnabledCodeunit."Test Codeunit ID" := CodeunitId;
        if CALTestEnabledCodeunit.Insert() then;
    end;
}