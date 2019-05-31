unit UnitCadPerfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Menus, System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmCadPerfil = class(TFrmPadrao1)
    PanelSup: TPanel;
    Label4: TLabel;
    DBCheckBox5: TDBCheckBox;
    DBEdit1: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    Movimentação: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    Relatório: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    Label1: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    FDTabelaid: TFDAutoIncField;
    FDTabelaDescricao: TStringField;
    FDTabelaOcultar: TStringField;
    FDTabelaUsuario: TStringField;
    FDTabelaUsuarioI: TStringField;
    FDTabelaUsuarioA: TStringField;
    FDTabelaUsuarioE: TStringField;
    FDTabelaPerfil: TStringField;
    FDTabelaPerfilI: TStringField;
    FDTabelaPerfilA: TStringField;
    FDTabelaPerfilE: TStringField;
    FDTabelaVenda: TStringField;
    FDTabelaVendaI: TStringField;
    FDTabelaVendaA: TStringField;
    FDTabelaVendaE: TStringField;
    FDTabelaStatus: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPerfil: TFrmCadPerfil;

implementation

{$R *.dfm}

end.
