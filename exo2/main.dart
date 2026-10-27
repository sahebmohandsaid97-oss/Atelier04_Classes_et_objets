class Point {
  // Attributs privés (double)
  double _x;
  double _y;

  // Constructeur prenant les coordonnées
  Point(this._x, this._y);

  // Méthode move pour déplacer le point
  void move(double dx, double dy) {
    _x += dx;
    _y += dy;
  }

  // Méthode display pour afficher les coordonnées
  void display() {
    print('Point(_x: $_x, _y: $_y)');
  }
}