unit aide;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    ListBox1: TListBox;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ListBox1SelectionChange(Sender: TObject; User: boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;
  AideConception: String = 'Le menu conception permet de paramétrer votre partie' + LineEnding + 'Vous pouvez choisir les différentes valeurs numériques correspondantes au paramètre de la partie telles que : le nombre maximal de points de vie d un joueur ou la durée maximale pour choisir une action.' + LineEnding + 'Ce menu vous permet ensuite de choisir si vous souhaitez jouez contre une IA, un autre joueur ou observer 2 IA.' + LineEnding + 'Pour lancer le jeu avec les paramètres choisis, cliquez sur le bouton "Jouer".';
  AideJeu: String = 'La fenêtre de jeu contient le déroulement d une partie.' + LineEnding + 'En haut de la fenêtre vous pouvez trouvez les indicateurs conecernant l état des joueurs (leurs points de vies et d énergies) ainsi que le temps restant pour réaliser le tour en cours.' + LineEnding + 'Au centre de la fenetre se trouve le choix des actions, en cliquant ou en utilisant le pavé numéraique vous pourrez choisir l action a effectuer lors de ce tour.' + LineEnding + 'Les actions peuvent être par exemple une attaque a la tête ou une esquive basse.' + LineEnding + 'En bas de la fenetre vous trouverez le bouton "Combat" qui permet de valider la sélection pour le tour en cours.';
  APropos: String = 'EG23-Combat v1.0' + LineEnding + 'Jeu sous licence MIT (veuillez consulter le fichier LICENSE pour plus d informations)' + LineEnding + 'Copyright (c) 2015 Antoine Girard Guittard, Aklesso Tchaa Malou';

implementation
uses conception;

{$R *.lfm}

{ TForm3 }

procedure TForm3.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  //On affiche la fenêtre conception lorsque l'on quitte la fenêtre d'aide
  Form3.Hide();
  Form1.Show();
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  //Au départ la fenêtre est sur l'aide de la conception
  ListBox1.ItemIndex := 0;
  Memo1.Text := AideConception;
end;

procedure TForm3.ListBox1SelectionChange(Sender: TObject; User: boolean);
begin
if ListBox1.ItemIndex = 0 then
     Memo1.Text := AideConception
  else if ListBox1.ItemIndex = 1 then
     Memo1.Text := AideJeu
  else
    Memo1.Text := APropos
end;


end.

