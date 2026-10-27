class Livre {
  String titre;
  String auteur;
  int _pages;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur, this._pages) {
    totalLivres++;
  }

  int get pages => _pages;

  static void afficherTotalLivres() {
    print("Nombre total de livres créés : $totalLivres");
  }

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur, Pages: $_pages");
  }
}

// 8. Classe Roman qui hérite de Livre
class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, int pages, this.genre) : super(titre, auteur, pages);

  // 9. Méthode pour afficher aussi le genre
  void afficherGenre() {
    print("Genre du roman : $genre");
  }

  @override
  void afficherInfos() {
    super.afficherInfos();
    print("Genre: $genre");
  }
}

void main() {
  Livre livre1 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry", 200);
  Roman roman1 = Roman("Les Misérables", "Victor Hugo", 1200, "Drame");

  livre1.afficherInfos();
  roman1.afficherInfos();
  roman1.afficherGenre();
}