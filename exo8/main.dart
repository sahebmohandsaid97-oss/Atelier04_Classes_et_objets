class Livre {
  String titre;
  String auteur;
  
  // 5. Attribut privé _pages
  int _pages;

  // 6. Propriété statique totalLivres
  static int totalLivres = 0;

  Livre(this.titre, this.auteur, this._pages) {
    totalLivres++; // Incrémentation à chaque création
  }

  // 5. Getter pour lire _pages
  int get pages => _pages;

  // 7. Méthode statique pour afficher le nombre total de livres
  static void afficherTotalLivres() {
    print("Nombre total de livres créés : $totalLivres");
  }

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur, Pages: $_pages");
  }
}

void main() {
  Livre livre1 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry", 200);
  Livre livre2 = Livre("1984", "George Orwell", 328);

  livre1.afficherInfos();
  livre2.afficherInfos();
  
  // Test du getter et de la méthode statique
  print("Pages du livre 1 : ${livre1.pages}");
  Livre.afficherTotalLivres();
}