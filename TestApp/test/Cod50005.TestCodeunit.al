codeunit 50005 "TestCodeunit"
{
    Subtype = Test;

    [Test]
    procedure MyFirstTest()
    var
        Assert: Codeunit Assert;
    begin
        Assert.AreEqual(true, true, 'Succeeded!');
    end;

    [Test]
    procedure MyFirstFailingTest()
    begin
        Error('Test failed because we want it!');
    end;

}