
class Personagem {
  float x;
  int size = 70;
  int direction;

  Personagem(int startX, int startDirection) {
    x = startX;
    direction = startDirection;
  }

  void update() {
    x += 2 * direction;

    if (direction == 1) {
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
    fill(255, 200, 0);
    noStroke();
    ellipse(x, 50, size, size);
  }

  void randomizeDirection() {
    direction = random(1) < 0.5 ? 1 : -1;
  }
}
