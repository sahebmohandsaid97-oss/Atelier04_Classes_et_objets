class Media {
  final String titre;

  // Constructeur simplifié
  Media(this.titre);

  // Méthode afficherType
  void afficherType() {
    print("Ceci est un média générique.");
  }
}

// Classe Livre qui hérite de Media
class Livre extends Media {
  final String auteur;

  // Constructeur avec super pour initialiser le titre de la classe mère
  Livre(String titre, this.auteur) : super(titre);

  // Redéfinition de la méthode afficherType
  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}