unit UnitUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, Vcl.Menus,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmUsuario = class(TFrmPadrao1)
    FDTabelaid: TFDAutoIncField;
    FDTabelaUsuario: TStringField;
    FDTabelaSenha: TStringField;
    FDTabelaFuncionario: TIntegerField;
    FDTabelaStatus: TStringField;
    FDTabelaPerfil: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource2: TDataSource;
    FDQuery1: TFDQuery;
    DataSource3: TDataSource;
    FDQuery2: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuario: TFrmUsuario;

implementation

{$R *.dfm}

end.
