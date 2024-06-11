class Cenario {
  float circleX;
  int circleSize = 50;
  int circleDirection;
  int solColor;
  int ceuColor;
  int chaoColor;

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
      return; // Se ceuColor não for 1, 2, 3 ou 4, não faz nada
    }

    for (int y = 0; y <= height / 2; y++) {
      float inter = map(y, 0, height / 2, 0, 1);
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
      image (chaonoite, 0, 300);
    } else if (chaoColor == 2) {
      //madrugada
      image (chaomadrug, 0, 300);
    } else if (chaoColor == 3) {
      //dia
      image (chaodia, 0, 300);
    } else if (chaoColor == 4) {
      //por do sol
      image (chaopor, 0, 300);
    }


    /*if (chaoColor == 1) {
     //noite
     chao.setFill(color(91, 67, 60));
     sombra.setFill(color(150));
     } else if (chaoColor == 2) {
     //madrugada
     chao.setFill(color(186, 124, 69));
     sombra.setFill(color(150));
     } else if (chaoColor == 3) {
     //dia
     chao.setFill(color(245, 143, 53));
     sombra.setFill(color(150));
     } else if (chaoColor == 4) {
     //por do sol
     chao.setFill(color(186, 124, 69));
     sombra.setFill(color(150));
     }
     
     shape(chao, 0, 300, width *2, 600);
     shape(sombra, 0, 300, width *2, 600);
     */
  }

  void desenhaCacto() {
    fill(17, 137, 25);
    pushMatrix();
    ellipse(165, 250, 30, 60);
    rect(150, 250, 30, 50);
    translate(350, 0);
    ellipse(165, 250, 30, 60);
    rect(150, 250, 30, 50);
    translate(550, 0);
    ellipse(165, 250, 30, 60);
    rect(150, 250, 30, 50);
    popMatrix();

    pushMatrix();
    translate(-130, 190);
    rotate(-PI / 4);
    ellipse(135, 250, 10, 30);
    rect(130, 250, 10, 30);
    translate(250, 240);
    ellipse(135, 250, 10, 30);
    rect(130, 250, 10, 30);
    translate(390, 390);
    ellipse(135, 250, 10, 30);
    rect(130, 250, 10, 30);
    popMatrix();

    pushMatrix();
    translate(235, -55);
    rotate(PI / 4);
    ellipse(185, 250, 10, 30);
    rect(180, 250, 10, 30);
    translate(240, -250);
    ellipse(185, 250, 10, 30);
    rect(180, 250, 10, 30);
    translate(390, -400);
    ellipse(185, 250, 10, 30);
    rect(180, 250, 10, 30);
    popMatrix();
  }
}
