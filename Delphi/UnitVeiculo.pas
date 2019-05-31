unit UnitVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Menus, System.ImageList, Vcl.ImgList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmVeiculo = class(TFrmPadrao1)
    FDTabelaid: TIntegerField;
    FDTabelafabricante: TIntegerField;
    FDTabelamodelo: TIntegerField;
    FDTabelaano: TIntegerField;
    FDTabelacor: TStringField;
    FDTabelaplaca: TStringField;
    FDTabelacliente: TIntegerField;
    FDTabelastatus: TStringField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DSFab: TDataSource;
    FDQueryFab: TFDQuery;
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
  FrmVeiculo: TFrmVeiculo;

implementation

{$R *.dfm}

end.
