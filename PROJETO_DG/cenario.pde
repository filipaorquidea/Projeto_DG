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

    solColor = int(random(1, 4));
    ceuColor = int(random(1, 4));
    chaoColor = int(random(1, 4));

    if (circleDirection == 1) {
      circleX = -circleSize / 2;
    } else if (circleDirection == 2) {
      circleX = width + circleSize / 2;
    } else {
      circleX = width / 2;
    }
  }

  void update() {

    if (circleDirection == 1) {
      circleX += 2;
      if (circleX > width + circleSize / 2) {
        circleX = -circleSize / 2;
      }
    } else if (circleDirection == 2) {
      circleX -= 2;
      if (circleX < -circleSize / 2) {
        circleX = width + circleSize / 2;
      }
    }
  }

  void display() {
    noStroke();
    // Céu
    if (ceuColor == 1) {
      fill(25, 180, 250);
    } else if (ceuColor == 2) {
      fill(18, 11, 82);
    } else if (ceuColor == 3) {
      fill(177, 235, 240);
    }
    rect(0, 0, width * 2, 300);

    // Sol
    if (solColor == 1) {
      fill(244, 245, 96);
    } else if (solColor == 2) {
      fill(216, 201, 57);
    } else if (solColor == 3) {
      fill(255);
    }
    ellipse(circleX, 50, 70, 70);

    // Chão
    if (chaoColor == 1) {
      fill(200, 170, 100);
    } else if (chaoColor == 2) {
      fill(124, 111, 67);
    } else if (chaoColor == 3) {
      fill(222, 204, 145);
    }
    rect(0, 300, width * 2, 600);
  }
}
