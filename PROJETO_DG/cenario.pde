
class Cenario {
  float circleX;
  int circleSize = 50;
  int circleDirection;
  int solColor;

  Cenario(int startDirection) {
    circleDirection = startDirection;

    solColor = int(random(1, 4));

    circleX = (circleDirection == 1) ? -circleSize / 2 : width + circleSize / 2;
  }

  void update() {

    circleX += 2 * circleDirection;

    if (circleDirection == 1 && circleX > width + circleSize / 2) {
      circleX = -circleSize / 2;
    } else if (circleDirection == -1 && circleX < -circleSize / 2) {
      circleX = width + circleSize / 2;
    }

    if (solColor == 1) {
      fill(255, 0, 0);
    } else if (solColor == 2) {
      fill(0, 255, 0);
    } else if (solColor == 3) {
      fill(0, 0, 255);
    }
  }

  void display() {
    // Céu
    fill(150, 230, 255);
    rect(0, 0, width * 2, 300);

    //sol
    noStroke();
    ellipse(circleX, 50, 70, 70);

    // Chão
    fill(200, 170, 100, 150);
    rect(0, 300, width * 2, 600);
  }
}
