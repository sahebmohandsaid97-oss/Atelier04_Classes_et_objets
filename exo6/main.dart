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

void main() {
  // Création d'une liste services de type List<Connectable> contenant les instances
  List<Connectable> services = [
    ServeurAPI(),
    BaseDeDonnees(),
  ];

  // Parcours de la liste et exécution des méthodes pour chaque service
  for (var service in services) {
    service.connecter("Admin");
    service.deconnecter();
    print(""); // Ligne vide pour la lisibilité
  }
}