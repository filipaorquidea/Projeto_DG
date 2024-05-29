
class Personagem {
  float x;
  int size = 70;
  int personmove;

  Personagem(int startX) {
    x = startX;
  }

  void update() {
    x += 2 * personmove;

    if (personmove == 1) {
      if (x - size / 2 >= width) {
        x = -size / 2;
      }
    } else {
      if (x + size / 2 <= 0) {
        x = width + size / 2;
      }
    }
  }

  void display() {
    /*fill(255, 200, 0);
    ellipse(x, 50, size, size);*/
  }
}
