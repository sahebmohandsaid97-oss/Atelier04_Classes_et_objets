class Compte {
  final String numeroCompte;
  double _solde;

  // Constructeur simplifié
  Compte(this.numeroCompte, [this._solde = 0.0]);

  // Getter public solde formaté en dollar (ex: "150.00 $")
  String get solde => '${_solde.toStringAsFixed(2)} \$';
}