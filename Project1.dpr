program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;


var
  Lib: HModule;
  Symbol: Pointer;
begin
  Lib := LoadLibrary('libgobject-2.0.so');
  if Lib <> 0 then
  begin
    Writeln('LoadLibrary OK');
    Symbol := GetProcAddress(Lib, 'g_object_ref');
    if Symbol <> nil then
      Writeln('Symbol found in library OK');
    if FreeLibrary(Lib) then
      Writeln('FreeLibrary OK')
    else
      Writeln('FreeLibrary FAILED');
  end;
end.
