
class Carrinha {
  int rectX, rectY;
  int rectSize;
  int minRectSize = 50;
  int rectDirection;
  int vanY = height/2;
  boolean carrega;

  Carrinha(int startDirection) {
    rectDirection = startDirection;
    carrega = false;
    carregarcarrinha();
  }

  void carregarcarrinha() {
    carrega = true;
    rectY = height - 300;
    rectSize = 100;

    if (rectDirection == 2) {
      rectX = -rectSize / 2;
    } else if (rectDirection == 3) {
      rectX = width + rectSize / 2;
    } else {
      rectX = width / 2;
    }
  }

  void update() {
    if (!carrega) {
      carregarcarrinha();
    }

    if (rectDirection == 1) {
      if (rectSize > minRectSize) {
        rectSize -= 1;
        rectY -= 0.5;
      } else {
        rectSize = 200;
        rectY = height - 300;
      }
    } else if (rectDirection == 2) {
      rectX += 2;
      if (rectX - rectSize / 2 >= width) {
        rectX = -rectSize / 2;
      }
    } else if (rectDirection == 3) {
      rectX -= 2;
      if (rectX + rectSize / 2 <= 0) {
        rectX = width + rectSize / 2;
      }
    } else if (rectDirection == 4) {
      for (int i = 0; i < 7; i++) {
        int vanX = (frameCount * 2 + i * 180) % width;
        fill(150);
        rect(vanX - 50, vanY - 25, 100, 50);
        fill(0);
        ellipse(vanX - 35, vanY + 25, 15, 15);
        ellipse(vanX + 35, vanY + 25, 15, 15);
      }
    }
  }

  void display() {
    noStroke();
    fill(150);
    rect(rectX, rectY, rectSize, 50);
    fill(0);
    ellipse(rectX + 15, rectX - 170, 15, 15);
    ellipse(rectX + 85, rectX - 170, 15, 15);
  }
}
