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