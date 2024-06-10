class Personagem {
  float x, y;
  int size = 70;
  int personmove;
  float x2;
  boolean collision = false;

  Personagem(int startX) {
    personmove = startX;
    x2 = width + size / 2;
  }

  void update() {
    //a personagem encontra se com a amiga
    if (personmove == 1) {

      stroke(1);
      fill(255, 0, 0);
      ellipse(x2 + 25, 590, 15, 15);
      triangle(x2, 650, x2 + 25, 600, x2 + 50, 650);
      if (!collision) {
        x += 2;

        if (x - size / 2 >= width) {

          x = -size / 2;
        }

        x2 -= 2;

        if (x2 + size / 2 <= 0) {

          x2 = width + size / 2;
        }

        if (dist(x + 80, 470, x2 + 25, 470) < size) {

          collision = true;
        }
      }
      //personagem com o amigo mas nao faz nada ainda
    } else if (personmove == 2) {

      stroke(1);
      fill(0, 0, 255);
      ellipse(x + 225, 590, 15, 15);
      triangle(x + 200, 650, x + 225, 600, x + 250, 650);

      //personagem muda se para a casa do amigo
    } else if (personmove == 3) {

      fill(255, 0, 0);
      triangle(980, 500, 1100, 400, 1220, 500);
      fill(150);
      rect(1000, 500, 200, 150);

      stroke(1);
      fill(0, 0, 255);
      ellipse(x + 125, 590, 15, 15);
      triangle(x + 100, 650, x + 125, 600, x + 150, 650);

      if (!collision) {
        x += 2;
        if (x + size / 2 >= 1000 && x - size / 2 <= 1200) {
          collision = true;
        }
      }

      //personagem visita irma
    } else if (personmove == 4) {
      fill(255, 0, 0);
      triangle(180, 500, 300, 400, 420, 500);
      fill(150);
      rect(200, 500, 200, 150);

      stroke(1);
      fill(0, 255, 0);
      ellipse(235, 590, 15, 15);
      triangle(210, 650, 235, 600, 260, 650);

      fill(178, 57, 152);
      ellipse(295, 590, 15, 15);
      triangle(270, 650, 295, 600, 320, 650);

      if (!collision) {
        x -= 2;
        if (x + size/2 <= 200) {
          collision = true;
        }
      }
      //comunidade
    } else if (personmove == 5) {
      for (int i = 0; i < 5; i++) {
        int x = (frameCount + i * 180) % width;
        stroke(1);
        fill(227, 190, 210);
        ellipse(x + 25, y + 590, 15, 15);
        triangle(x, y + 650, x + 25, y + 600, x + 50, y + 650);
      }
    }
  }

  void display() {
    stroke(1);
    fill(227, 190, 210);
    ellipse(x + 25, 590, 15, 15);
    triangle(x, 650, x + 25, 600, x + 50, 650);
  }
}
