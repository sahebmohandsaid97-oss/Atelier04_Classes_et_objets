class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print("Ceci est un média générique.");
  }
}

class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}

class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Film : $titre d'une durée de $dureeMinutes minutes.");
  }
}

void main() {
  // Création de la liste catalogue de type List<Media> et ajout des instances
  List<Media> catalogue = [
    Livre("Les Misérables", "Victor Hugo"),
    Film("Inception", 148),
    Media("Revue technique générique")
  ];

  // Parcours de la liste et appel de afficherType() pour chaque élément
  for (var media in catalogue) {
    media.afficherType();
  }
}