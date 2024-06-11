class Cenario {
  float circleX;
  int circleSize = 50;
  int circleDirection;
  int solColor, ceuColor, chaoColor;

  Cenario(int startDirection) {
    noFill();
    circleDirection = startDirection;

    solColor = cenarioRandom;
    ceuColor = cenarioRandom;
    chaoColor = cenarioRandom;

    if (circleDirection == 1) {
      circleX = -circleSize / 2;
    } else if (circleDirection == 2) {
      circleX = width + circleSize / 2;
    } else {
      circleX = width / 2;
    }
  }

  void update() {
    // Movimento do sol
    if (circleDirection == 1) {
      circleX += 1;
      if (circleX > width + circleSize / 2) {
        circleX = -circleSize / 2;
      }
    } else if (circleDirection == 2) {
      circleX -= 1;
      if (circleX < -circleSize / 2) {
        circleX = width + circleSize / 2;
      }
    }

    noStroke();

    // Céu
    desenhaCeu();

    // Sol
    desenhaSol();

    // Chão
    desenhaChao();

    // Cacto
    desenhaCacto();
  }

  void desenhaCeu() {
    color c1, c2;

    if (ceuColor == 1) {
      // Noite
      c1 = color(44, 89, 132);
      c2 = color(42, 105, 133);
    } else if (ceuColor == 2) {
      // Madrugada
      c1 = color(65, 168, 188);
      c2 = color(189, 195, 183);
    } else if (ceuColor == 3) {
      // Dia
      c1 = color(159, 205, 231);
      c2 = color(198, 196, 184);
    } else if (ceuColor == 4) {
      // Pôr do sol
      c1 = color(106, 136, 171);
      c2 = color(191, 183, 203);
    } else {
      return;
    }

    for (int y = 0; y <= height; y++) {
      float inter = map(y, 0, height/2, 0, 1);
      color c = lerpColor(c1, c2, inter);
      noFill();
      stroke(c);
      line(0, y, width, y);
    }
  }

  void desenhaSol() {
    noStroke();
    if (solColor == 1) {
      // Noite lua
      fill(139, 139, 140);
    } else if (solColor == 2) {
      // Madrugada
      fill(238, 223, 192);
    } else if (solColor == 3) {
      // Dia
      fill(244, 242, 194);
    } else if (solColor == 4) {
      // Pôr do sol
      fill(226, 199, 161);
    }

    ellipse(circleX, 50, 70, 70);
  }

  void desenhaChao() {
    if (chaoColor == 1) {
      //noite
      image (chaonoite, 0, height-(height-200), width, height-200);
    } else if (chaoColor == 2) {
      //madrugada
      image (chaomadrug, 0, height-(height-200), width, height-200);
    } else if (chaoColor == 3) {
      //dia
      image (chaodia, 0, height-(height-200), width, height-200);
    } else if (chaoColor == 4) {
      //por do sol
      image (chaopor, 0, height-(height-200), width, height-200);
    }
  }

  void desenhaCacto() {
    int altura = 100;
    int largura = 40;

    if (chaoColor == 1) {
      //noite
      image (catoNoite, width/25, height/1.7, largura, altura);
      image (catoNoite, width-(width/25 + largura), height/1.3, largura + 40, altura + 40);
    } else if (chaoColor == 2) {
      //madrugada
      image (catoDia, width/25, height/1.7, largura, altura);
      image (catoDia, width-(width/25 + largura), height/1.3, largura + 40, altura + 40);
    } else if (chaoColor == 3) {
      //dia
      image (catoDia, width/25, height/1.7, largura, altura);
      image (catoDia, width-(width/25 + largura), height/1.3, largura + 40, altura + 40);
    } else if (chaoColor == 4) {
      //por do sol
      image (catoDia, width/25, height/1.7, largura, altura);
      image (catoDia, width-(width/25 + largura), height/1.3, largura + 40, altura + 40);
    }
  }
}
