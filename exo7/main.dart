class Tache {
  String description;
  
  static int nombreTotal = 0;

  // Constructeur simplifié qui incrémente nombreTotal à chaque instance créée
  Tache(this.description) {
    nombreTotal++;
  }
}