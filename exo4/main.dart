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

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}

// Classe Film qui hérite de Media
class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Film : $titre d'une durée de $dureeMinutes minutes.");
  }
}