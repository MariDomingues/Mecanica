unit UnitPecas;

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
  TFrmPecas = class(TFrmPadrao1)
    FDTabelaid: TIntegerField;
    FDTabeladescricao: TStringField;
    FDTabelafabricante: TIntegerField;
    FDTabelavalor: TBCDField;
    FDTabelastatus: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQuery1: TFDQuery;
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPecas: TFrmPecas;

implementation

{$R *.dfm}

uses UnitDM;

end.
