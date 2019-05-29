unit UnitModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Mask, Data.DB, Vcl.Menus,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmModelo = class(TFrmPadrao1)
    FDTabelaid: TIntegerField;
    FDTabelafabricante: TIntegerField;
    FDTabeladescricao: TStringField;
    FDTabelaversao: TStringField;
    FDTabelastatus: TStringField;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    FDQueryFab: TFDQuery;
    DSFab: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModelo: TFrmModelo;

implementation

{$R *.dfm}

end.
