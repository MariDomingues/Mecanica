unit UnitPadrao1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmPadrao1 = class(TForm)
    FDStatus: TFDCommand;
    FDTabela: TFDTable;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ImageList4: TImageList;
    PanelEntrada: TPanel;
    LblStatus: TLabel;
    Label2: TLabel;
    BtnOk: TSpeedButton;
    ValorCampo: TEdit;
    CheckHabilita: TDBCheckBox;
    PnlFicha: TPanel;
    PopupMenu1: TPopupMenu;
    IDCdigo1: TMenuItem;
    odososregistrosdessatabela1: TMenuItem;
    N1: TMenuItem;
    Registrosbloqueadosparaouso2: TMenuItem;
    N3: TMenuItem;
    PopupMenu2: TPopupMenu;
    IDCdigo2: TMenuItem;
    MenuItem1: TMenuItem;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Pesquisar: TToolButton;
    btn_Ordenar: TToolButton;
    Separador1: TToolButton;
    btn_Primeiro: TToolButton;
    btn_Anterior: TToolButton;
    btn_Proximo: TToolButton;
    btn_Ultimo: TToolButton;
    Separador2: TToolButton;
    btn_Inserir: TToolButton;
    btn_Alterar: TToolButton;
    btn_Excluir: TToolButton;
    Separador3: TToolButton;
    btn_Salvar: TToolButton;
    btn_Cancelar: TToolButton;
    Separador4: TToolButton;
    btn_Imprimir: TToolButton;
    Separador5: TToolButton;
    btn_Sair: TToolButton;
    procedure btn_PrimeiroClick(Sender: TObject);
    procedure btn_AnteriorClick(Sender: TObject);
    procedure btn_ProximoClick(Sender: TObject);
    procedure btn_UltimoClick(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure CheckHabilitaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure IDCdigo1Click(Sender: TObject);
    procedure IDCdigo2Click(Sender: TObject);
    procedure odososregistrosdessatabela1Click(Sender: TObject);
    procedure Registrosbloqueadosparaouso2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao1: TFrmPadrao1;
  tipoID, tarefaClick, operacaoIncluir : integer;
  nomeTabela, modoEdicao, nomeJanela, valData1, valData2, tarefa, mensagem : String;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmPadrao1.btn_AlterarClick(Sender: TObject);
begin
  Acao := 'A';
  FDTabela.Edit;

  //Habilita a exibição de Objetos
  ValorCampo.Enabled    := False;
  btnOK.Enabled         := False;
  CheckHabilita.Enabled := False;
  PnlFicha.Enabled      := True;

  //Botões e barra de Status
  Executar                  := desabilitaBotoes;
  StatusBar1.Panels[2].Text := 'Alteração de Registro.';
  Executar                  := exibePanels;
end;

procedure TFrmPadrao1.btn_AnteriorClick(Sender: TObject);
begin
  FDTabela.Prior;
  Executar := navegacao;
  Executar := exibePanels;
end;

procedure TFrmPadrao1.btn_CancelarClick(Sender: TObject);
begin
  FDTabela.Cancel;

  if Acao = 'I' then
    mensagem := 'A inclusão do registro foi abortada.'
  else
    mensagem := 'A alteração do registro foi abortada.';
  Application.MessageBox(PChar(mensagem),'Atenção', MB_OK + MB_ICONERROR);

  Executar := habilitaBotoes;

  //habilita a exibição de objetos
  ValorCampo.Clear;
  ValorCampo.Enabled    := True;
  btnOK.Enabled         := True;
  CheckHabilita.Enabled := True;
  PnlFicha.Enabled      := False;

  if FDTabela.FieldByName('Status').AsString = 'I' then
    lblStatus.Visible := True
  else
    lblStatus.Visible := False;
end;

procedure TFrmPadrao1.btn_ExcluirClick(Sender: TObject);
var confExcl: integer;
begin
  if FDTabela.RecordCount = 0 then
    begin
      Application.MessageBox('Não há nenhum registro para ser excluído.', 'Informação', MB_OK + MB_ICONERROR);
      Abort;
    end;

  mensagem := 'Confirma a exclusão desse registro?';
  confExcl := Application.MessageBox(PChar(mensagem), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

    if confExcl = IDYES then
      begin
        FDTabela.Delete;

        mensagem := 'O registro foi excluido com sucesso.';
        Application.MessageBox(PChar(mensagem), 'Informação', MB_OK + MB_ICONINFORMATION);
      end
    else
      begin
        mensagem := 'A exclusão do registro foi abortada.';
        Application.MessageBox(PChar(mensagem), 'Informação', MB_OK + MB_ICONINFORMATION);
      end;

  Executar := habilitaBotoes;
  Executar := exibePanels;
end;

procedure TFrmPadrao1.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';
  operacaoIncluir := 1;

  if FDTabela.Active = False then
    begin
      FDTabela.Open();
    end;

  FDTabela.Insert;

  //Habilita a exibição de Objetos
  ValorCampo.Enabled    := False;
  btnOK.Enabled         := False;
  CheckHabilita.Enabled := False;
  lblStatus.Visible     := False;
  PnlFicha.Enabled      := True;

  //Inclusão de registro
  FDTabela.FieldByName('Status').AsString := 'A';

  //Botoes e barra de status
  Executar := desabilitaBotoes;
  StatusBar1.Panels[2].Text := 'Inclusão de novo registro';
  Executar := exibePanels;

  operacaoIncluir := 0;
end;

procedure TFrmPadrao1.btn_PrimeiroClick(Sender: TObject);
begin
  FDTabela.First;
  Executar := navegacao;
  Executar := exibePanels;
end;

procedure TFrmPadrao1.btn_ProximoClick(Sender: TObject);
begin
  FDTabela.Next;
  Executar := navegacao;
  Executar := exibePanels;
end;

procedure TFrmPadrao1.btn_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPadrao1.btn_SalvarClick(Sender: TObject);
begin
  FDTabela.Post;

  if Acao = 'I' then
    mensagem := 'O registro foi incluído com sucesso.'
  else
    mensagem := 'O registro foi alterado com sucesso.';
  Application.MessageBox(PChar(mensagem), 'Informação', MB_OK + MB_ICONINFORMATION);

  Executar := habilitaBotoes;

  //habilita a exibição de objetos
  ValorCampo.Clear;
  ValorCampo.Enabled    := True;
  btnOK.Enabled         := True;
  CheckHabilita.Enabled := True;
  PnlFicha.Enabled      := False;

  if FDTabela.FieldByName('Status').AsString = 'I' then
    lblStatus.Visible := True
  else
    lblStatus.Visible := False;
  ValorCampo.SetFocus;
end;

procedure TFrmPadrao1.btn_UltimoClick(Sender: TObject);
begin
  FDTabela.Last;
  Executar := navegacao;
  Executar := exibePanels;
end;

procedure TFrmPadrao1.CheckHabilitaClick(Sender: TObject);
begin
  FDStatus.Close;
  if CheckHabilita.Checked then
    begin
      FDStatus.CommandText.Text := 'update ' + FDTabela.TableName + ' set Status = ''A'' where Codigo = ' + FDTabela.FieldByName('Codigo').AsString + ';';
      lblStatus.Visible := False;
    end
  else
    begin
      FDStatus.CommandText.Text := 'update ' + FDTabela.TableName + ' set Status = ''I'' where Codigo = ' + FDTabela.FieldByName('Codigo').AsString + ';';
      lblStatus.Visible := True;
    end;
  FDStatus.Open;
end;

procedure TFrmPadrao1.FormActivate(Sender: TObject);
begin
  FDTabela.Close;
  FDTabela.Open();
  Executar := habilitaBotoes;

  if FDTabela.FieldByName('Status').AsString = 'I' then
    begin
      lblStatus.Visible := True;
    end
  else
    begin
      lblStatus.Visible := False;
    end;

  ValorCampo.Text := IntToStr(FDTabela.FieldByName('id').AsInteger);
end;

procedure TFrmPadrao1.IDCdigo1Click(Sender: TObject);
begin
  ValorCampo.Clear;
  ValorCampo.SetFocus;
end;

procedure TFrmPadrao1.IDCdigo2Click(Sender: TObject);
begin
  FDTabela.IndexFieldNames:= 'id';
  StatusBar1.Panels[2].Text:= 'Ordenado: ID';
end;

procedure TFrmPadrao1.odososregistrosdessatabela1Click(Sender: TObject);
begin
  FDTabela.Filter           := '';
  FDTabela.Filtered         := True;
  StatusBar1.Panels[2].Text := 'Todos os registros.';

  Executar := exibePanels;
  Executar := navegacao;
  Executar := habilitaBotoes;
end;

procedure TFrmPadrao1.Registrosbloqueadosparaouso2Click(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := 'Pesquisa de registros bloqueados para o uso.';

  FDTabela.Filter   := 'Status = ' + #39 + 'N' + #39;
  FDTabela.Filtered := True;

  Executar := sentencaSQL;
  Executar := exibePanels;
  Executar := navegacao;
  Executar := habilitaBotoes;
end;

end.
