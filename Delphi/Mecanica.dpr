program Mecanica;

uses
  Vcl.Forms,
  UnitMenuPrincipal in 'UnitMenuPrincipal.pas' {FrmMenuPrincipal},
  UnitPadrao in 'UnitPadrao.pas' {FrmPadrao1},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitPecas in 'UnitPecas.pas' {FrmPecas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TFrmPadrao1, FrmPadrao1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPecas, FrmPecas);
  Application.Run;
end.
