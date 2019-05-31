program Mecanica;

uses
  Vcl.Forms,
  UnitMenuPrincipal in 'UnitMenuPrincipal.pas' {FrmMenuPrincipal},
  UnitPadrao in 'UnitPadrao.pas' {FrmPadrao1},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitPecas in 'UnitPecas.pas' {FrmPecas},
  UnitClientes in 'UnitClientes.pas' {FrmCliente},
  UnitFabricante in 'UnitFabricante.pas' {FrmFabricante},
  UnitFuncionario in 'UnitFuncionario.pas' {FrmFuncionario},
  UnitModelo in 'UnitModelo.pas' {FrmModelo},
  UnitCadPerfil in 'UnitCadPerfil.pas' {FrmCadPerfil},
  UnitServicos in 'UnitServicos.pas' {FrmServicos},
  UnitVeiculo in 'UnitVeiculo.pas' {FrmVeiculo},
  UnitUsuario in 'UnitUsuario.pas' {FrmUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TFrmPadrao1, FrmPadrao1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPecas, FrmPecas);
  Application.CreateForm(TFrmCliente, FrmCliente);
  Application.CreateForm(TFrmFabricante, FrmFabricante);
  Application.CreateForm(TFrmFuncionario, FrmFuncionario);
  Application.CreateForm(TFrmModelo, FrmModelo);
  Application.CreateForm(TFrmCadPerfil, FrmCadPerfil);
  Application.CreateForm(TFrmServicos, FrmServicos);
  Application.CreateForm(TFrmVeiculo, FrmVeiculo);
  Application.CreateForm(TFrmUsuario, FrmUsuario);
  Application.Run;
end.
