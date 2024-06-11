class Personagem {
  float x, y;
  int size = 70;
  int personmove;
  float x2;
  boolean collision = false;
  boolean started = false;

  int largura = 20;
  int altura = 100;

  Personagem(int startX) {
    personmove = startX;
    x2 = width + size / 2;
  }

  void update() {
    //a personagem encontra se com a amiga
    if (personmove == 1) {

      image(persoDia, x2, 590, largura, altura);
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

      image(persoDia, x + 225, 590, largura, altura);

      //personagem muda se para a casa do amigo
    } else if (personmove == 3) {

      fill(255, 0, 0);
      triangle(980, 500, 1100, 400, 1220, 500);
      fill(150);
      rect(1000, 500, 200, 150);

      stroke(1);
      fill(0, 0, 255);
      image(persoDia, x + 100, 590, largura, altura);



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
        if (!started) {
          x = width; // Começa à direita
          started = true; // Marca como iniciado
        } else {
          x -= 2; // Movimento da direita para a esquerda
        }
        if (x + size / 2 <= 400) {
          collision = true; // Para quando colidir com a casa
        }
      }
      //comunidade
    } else if (personmove == 5) {
      int numCharacters1 = 4;
      int numCharacters2 = 4;

      float radius1 = 50;
      float radius2 = 50;

      float centerX1 = width / 3;
      float centerY1 = height / 2;

      float centerX2 = 2 * width / 3;
      float centerY2 = height / 2;

      // Primeiro círculo com 4 personagens
      for (int i = 0; i < numCharacters1; i++) {
        float angle = TWO_PI / numCharacters1 * i;
        float x = centerX1 + cos(angle) * radius1;
        float y = centerY1 + sin(angle) * radius1;

        image(persoDia, x, y + 170, largura, altura);
      }

      // Segundo círculo com 3 personagens
      for (int i = 0; i < numCharacters2; i++) {
        float angle = TWO_PI / numCharacters2 * i;
        float x = centerX2 + cos(angle) * radius2;
        float y = centerY2 + sin(angle) * radius2;


        image(persoDia, x, y + 170, largura, altura);
      }
      x = -300;
    }

    image(persoDia, x + 25, 590, largura, altura);

  }
}
