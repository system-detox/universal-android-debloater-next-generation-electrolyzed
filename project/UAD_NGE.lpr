program UAD_NGE;

{$mode DelphiUnicode}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  uadnge.forms.main,
  uadnge.forms.about,
  uadnge.forms.settings,
  uadnge.core.adbwrapper;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Title := 'Universal Android Debloater Next Generation - Electrolyzed';
  Application.Scaled := True;
  Application.Initialize;
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.CreateForm(TfrmAboutDialog, frmAboutDialog);
  Application.CreateForm(TfrmSettingsDialog, frmSettingsDialog);
  Application.Run;
end.

