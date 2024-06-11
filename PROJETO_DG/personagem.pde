class Personagem {
  float x, y;
  int size = 70;
  int personmove;
  float x2;
  boolean collision = false;
  boolean started = false;

  int largura = 20;
  int altura = 100;

  float[] angleOffsets1;
  float[] angleOffsets2;
  float oscillationSpeed = 0.2;
  float oscillationAmplitude = 2;

  int horario = cenarioRandom;
  PImage pessoa;

  Personagem(int startX) {
    personmove = startX;
    x2 = width + size / 2;
  }

  void update() {
    //a personagem encontra se com a amiga

    if (horario == 1) {
      pessoa = persoNoite;
    } else if (horario == 2) {
      pessoa = persoMadrug;
    } else if (horario == 3) {
      pessoa = persoDia;
    } else if (horario == 4) {
      pessoa = persoMadrug;
    }


    if (personmove == 1) {

      image(pessoa, x2, 550, largura, altura);
      if (!collision) {
        x += 2;

        if (x - size / 2 >= width) {

          x = -size / 2;
        }

        x2 -= 2;

        if (x2 + size / 2 <= 0) {

          x2 = width + size / 2;
        }

        if (dist(x + 75, 470, x2 + 30, 470) < size) {

          collision = true;
        }
      }
      //personagem com o amigo mas nao faz nada ainda
    } else if (personmove == 2) {

    
      image(pessoa, 150, 550, largura, altura);

      //personagem muda se para a casa do amigo
    } else if (personmove == 3) {

      fill(255, 0, 0);
      triangle(780, 500, 900, 400, 1020, 500);
      fill(200);
      rect(800, 500, 200, 150);

      stroke(1);
      fill(0, 0, 255);
      image(pessoa, x + 100, 550, largura, altura);



      if (!collision) {
        x += 2;
        if (x + size / 2 >= 850 && x - size / 2 <= 1000) {
          collision = true;
        }
      }

      //personagem visita irma
    } else if (personmove == 4) {
      fill(255, 0, 0);
      triangle(180, 500, 300, 400, 420, 500);
      fill(200);
      rect(200, 500, 200, 150);


      image(pessoa, 210, 550, largura, altura);

      image(pessoa, 240, 550, largura, altura);

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
      float centerY1 = 700;

      float centerX2 = 2 * width / 3;
      float centerY2 = 700;

      angleOffsets1 = new float[numCharacters1];
      angleOffsets2 = new float[numCharacters2];
      for (int i = 0; i < numCharacters1; i++) {
        angleOffsets1[i] = random(TWO_PI);
      }
      for (int i = 0; i < numCharacters2; i++) {
        angleOffsets2[i] = random(TWO_PI);
      }

      // Primeiro círculo com 4 personagens
      for (int i = 0; i < numCharacters1; i++) {
        float angle = TWO_PI / numCharacters1 * i;
        float x = centerX1 + cos(angle) * radius1;
        float y = centerY1 + sin(angle) * radius1;

        // Adiciona movimento
        x += cos(angleOffsets2[i]) * oscillationAmplitude;
        y += sin(angleOffsets2[i]) * oscillationAmplitude;
        angleOffsets1[i] += oscillationSpeed;

        image(pessoa, x, y + 180, largura, altura);
      }

      // Segundo círculo com 3 personagens
      for (int i = 0; i < numCharacters2; i++) {
        float angle = TWO_PI / numCharacters2 * i;
        float x = centerX2 + cos(angle) * radius2;
        float y = centerY2 + sin(angle) * radius2;

        // Adiciona movimento
        x += cos(angleOffsets2[i]) * oscillationAmplitude;
        y += sin(angleOffsets2[i]) * oscillationAmplitude;
        angleOffsets1[i] += oscillationSpeed;

        image(pessoa, x, y + 180, largura, altura);
      }
      x = -300;
    }

    image(pessoa, x + 25, 550, largura, altura);
  }
}
