class Personagem {
  float x;
  int size = 70;
  int personmove;
  float x2;

  Personagem(int startX) {
    personmove = startX;
    x2 = width + size / 2;
  }

  void update() {
    if (personmove == 1) {
      x += 2;
      if (x - size / 2 >= width) {
        x = -size / 2;
      }
    } else if (personmove == 2) {
      x -= 2;
      if (x + size / 2 <= 0) {
        x = width + size / 2;
      }
    } else if (personmove == 3) {
      x += 2;
      if (x - size / 2 >= width) {
        x = -size / 2;
      }

      x2 -= 2;
      if (x2 + size / 2 <= 0) {
        x2 = width + size / 2;
      }

      fill(255, 0, 0);
      ellipse(x2 + 25, 460, 15, 15);
      triangle(x2, 520, x2 + 25, 470, x2 + 50, 520);

      if (dist(x + 80, 470, x2 + 25, 470) < size) {
        x = -size / 2;
        x2 = width + size / 2;
      }
    } else if (personmove == 4) {
      fill(0, 0, 255);
      ellipse(x + 225, 490, 15, 15);
      triangle(x + 200, 550, x + 225, 500, x + 250, 550);
    } else if (personmove == 5) {
      fill(255, 0, 0);
      triangle(980, 500, 1100, 400, 1220, 500);
      fill(150);
      rect(1000, 500, 200, 150);
      x += 2;
      fill(0, 0, 255);
      ellipse(x + 225, 490, 15, 15);
      triangle(x + 200, 550, x + 225, 500, x + 250, 550);
      if (x + size / 2 >= 1000 && x - size / 2 <= 1200) {
      }
    }
  }

  void display() {
    fill(227, 190, 210);
    ellipse(x + 25, 490, 15, 15);
    triangle(x, 550, x + 25, 500, x + 50, 550);
  }
}
