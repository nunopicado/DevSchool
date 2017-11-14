program TestInsightDUnitXTemplate;

{$STRONGLINKTYPES ON}

uses
  TestInsight.DUnitX,
  SomeClassTest in 'SomeClassTest.pas';

begin
  TestInsight.DUnitX.RunRegisteredTests;
end.
