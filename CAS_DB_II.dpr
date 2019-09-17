library CAS_DB_II;

uses
  ComServ,
  CAS_DB_II_TLB in 'CAS_DB_II_TLB.pas',
  CAS in 'CAS.pas' {CASDBII: CoClass};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
