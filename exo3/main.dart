class Compte {
  final String numeroCompte;
  double _solde;

  // Constructeur simplifié
  Compte(this.numeroCompte, [this._solde = 0.0]);

  // Getter public solde formaté en dollar (ex: "150.00 $")
  String get solde => '${_solde.toStringAsFixed(2)} \$';

  // Méthode depot pour ajouter de l'argent si le montant est positif
  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}

void main() {
  // Création d'un compte
  var monCompte = Compte("FR12345", 100.0);
  
  // Affichage du solde initial
  print("Solde initial : ${monCompte.solde}");
  
  // Effectuer un dépôt
  monCompte.depot(50.5);
  
  // Affichage du nouveau solde
  print("Solde après dépôt : ${monCompte.solde}");
}