class Livre {
  String titre;
  String auteur;

  // Constructeur approprié
  Livre(this.titre, this.auteur);

  // Méthode afficherInfos()
  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur");
  }
}

void main() {
  // Création de plusieurs objets de Livre et affichage de leurs informations
  Livre livre1 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry");
  Livre livre2 = Livre("1984", "George Orwell");

  livre1.afficherInfos();
  livre2.afficherInfos();
}