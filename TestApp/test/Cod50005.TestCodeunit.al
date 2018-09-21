codeunit 50005 "TestCodeunit"
{
    Subtype = Test;

    [Test]
    procedure MyFirstTest()
    begin
        Message('Succeeded!');
    end;

    [Test]
    procedure MyFirstFailingTest()
    begin
        Error('Test failed because we want it!');
    end;

}