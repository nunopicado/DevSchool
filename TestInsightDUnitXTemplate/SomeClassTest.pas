unit SomeClassTest;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TSomeClassTest = class(TObject)
  public
    [Test]
    [TestCase('True 1','1,1')]
    [TestCase('False 1','1,2')]
    procedure SomeMethodTest(const v1, v2: Integer);
  end;

implementation

{ TTest }

procedure TSomeClassTest.SomeMethodTest(const v1, v2: Integer);
begin
  Assert.AreEqual<Integer>(
    v1,
    v2,
    'No go!'
  );
end;

initialization
  TDUnitX.RegisterTestFixture(TSomeClassTest);
end.
