class Compte {
  final String numeroCompte;
  double _solde;

  // Constructeur simplifié avec solde initialisé à 0.0 par défaut
  Compte(this.numeroCompte, [this._solde = 0.0]);
}