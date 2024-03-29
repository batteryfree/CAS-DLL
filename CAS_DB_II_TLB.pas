unit CAS_DB_II_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 25.05.2017 13:26:26 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\администратор\Desktop\DLLS\5\CAS_DB_II.tlb (1)
// LIBID: {5C5431EC-9D4D-4048-8DF7-1D8251CDD1C3}
// LCID: 0
// Helpfile: 
// HelpString: Project1 Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CAS_DB_IIMajorVersion = 1;
  CAS_DB_IIMinorVersion = 0;

  LIBID_CAS_DB_II: TGUID = '{5C5431EC-9D4D-4048-8DF7-1D8251CDD1C3}';

  IID_ICASDBII: TGUID = '{DAE71D65-F275-4EFA-9951-AE570D36F4F1}';
  CLASS_CASDBII: TGUID = '{33A49F88-9A67-40E0-8FA0-E225ED3C7A6D}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICASDBII = interface;
  ICASDBIIDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CASDBII = ICASDBII;


// *********************************************************************//
// Interface: ICASDBII
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DAE71D65-F275-4EFA-9951-AE570D36F4F1}
// *********************************************************************//
  ICASDBII = interface(IDispatch)
    ['{DAE71D65-F275-4EFA-9951-AE570D36F4F1}']
    function PortConnect(COMNUM: Integer; BAUTRATE: Integer): WideString; safecall;
    function Weight(out Weight: WideString): WideString; safecall;
    function PortDisconnect: WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICASDBIIDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DAE71D65-F275-4EFA-9951-AE570D36F4F1}
// *********************************************************************//
  ICASDBIIDisp = dispinterface
    ['{DAE71D65-F275-4EFA-9951-AE570D36F4F1}']
    function PortConnect(COMNUM: Integer; BAUTRATE: Integer): WideString; dispid 201;
    function Weight(out Weight: WideString): WideString; dispid 202;
    function PortDisconnect: WideString; dispid 203;
  end;

// *********************************************************************//
// The Class CoCASDBII provides a Create and CreateRemote method to          
// create instances of the default interface ICASDBII exposed by              
// the CoClass CASDBII. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCASDBII = class
    class function Create: ICASDBII;
    class function CreateRemote(const MachineName: string): ICASDBII;
  end;

implementation

uses ComObj;

class function CoCASDBII.Create: ICASDBII;
begin
  Result := CreateComObject(CLASS_CASDBII) as ICASDBII;
end;

class function CoCASDBII.CreateRemote(const MachineName: string): ICASDBII;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CASDBII) as ICASDBII;
end;

end.
