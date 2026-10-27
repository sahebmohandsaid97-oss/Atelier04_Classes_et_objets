class Connectable {
  void connecter(String utilisateur) {}
  void deconnecter() {}
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI : Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("ServeurAPI : Déconnexion réussie.");
  }
}

// Classe BaseDeDonnees qui implémente Connectable
class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("BaseDeDonnees : Connexion ouverte pour l'utilisateur $utilisateur.");
  }

  @override
  void deconnecter() {
    print("BaseDeDonnees : Connexion fermée avec succès.");
  }
}