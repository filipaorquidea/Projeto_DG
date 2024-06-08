
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
    stroke(1);
    fill(227, 190, 210);
    triangle(120, 520, 170, 420, 220, 520);
  }
}
