unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    edtFraseOld: TEdit;
    btnTrocar: TButton;
    edtFraseNew: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtParamOld: TEdit;
    Label4: TLabel;
    edtParamNew: TEdit;
    Bevel1: TBevel;
    procedure btnTrocarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uSubstitui;

procedure TfrmPrincipal.btnTrocarClick(Sender: TObject);
var
   substitui : TSubstitui;
begin

   substitui := TSubstitui.Create;

   edtFraseNew.Text := substitui.Substituir(
                                              edtFraseOld.Text,
                                              edtParamOld.Text,
                                              edtParamNew.Text
                                            );

   substitui.Free;
end;

end.
