class Tache {
  String description;
  
  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}
void main() {
  // Création de trois instances de Tache
  Tache t1 = Tache("Apprendre Dart");
  Tache t2 = Tache("Faire les commits Git");
  Tache t3 = Tache("Envoyer le devoir");

  // Affichage de la valeur finale de nombreTotal en utilisant le nom de la classe
  print("Nombre total de tâches créées : ${Tache.nombreTotal}");
}