abstract class Forme {
  double calculerAire();

  void afficherMessage() {
    print("Calcul de l'aire...");
  }
}

class Cercle extends Forme {
  final double rayon;

  Cercle(this.rayon);

  @override
  double calculerAire() {
    return 3.14159 * rayon * rayon;
  }
}

class Rectangle extends Forme {
  final double longueur;
  final double largeur;

  Rectangle(this.longueur, this.largeur);

  @override
  double calculerAire() {
    return longueur * largeur;
  }
}

void main() {
  // Création des instances
  Forme monCercle = Cercle(5.0);
  Forme monRectangle = Rectangle(4.0, 6.0);

  // Test pour le Cercle
  monCercle.afficherMessage();
  print("Aire du cercle : ${monCercle.calculerAire()}\n");

  // Test pour le Rectangle
  monRectangle.afficherMessage();
  print("Aire du rectangle : ${monRectangle.calculerAire()}");
}
