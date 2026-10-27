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

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, int pages, this.genre) : super(titre, auteur, pages);

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
  // Création de plusieurs objets de Livre et de Roman
  Livre livre1 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry", 200);
  
  Roman roman1 = Roman("Les Misérables", "Victor Hugo", 1200, "Drame");
  Roman roman2 = Roman("Le Comte de Monte-Cristo", "Alexandre Dumas", 1000, "Aventure");

  // Affichage des informations
  livre1.afficherInfos();
  print("------------------");
  
  roman1.afficherInfos();
  print("------------------");
  
  roman2.afficherInfos();
  print("------------------");

  // Affichage du nombre total de livres
  Livre.afficherTotalLivres();
}