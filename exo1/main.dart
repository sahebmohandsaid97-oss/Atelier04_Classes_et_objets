class Couleur {
  final int r;
  final int g;
  final int b;

  // Constructeur principal
  Couleur(this.r, this.g, this.b);

  // Constructeurs nommés
  Couleur.rouge() : r = 255, g = 0, b = 0;
  Couleur.vert() : r = 0, g = 255, b = 0;
  Couleur.bleu() : r = 0, g = 0, b = 255;

  // Méthode pour afficher la couleur
  void afficherCouleur() {
    print('(R :$r, V :$g, B :$b)');
  }
}