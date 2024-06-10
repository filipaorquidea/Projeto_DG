
class Carrinha {
  int rectX, rectY;
  int rectSize;
  int minRectSize = 70;
  int rectDirection;
  int vanY = height/2;

  Carrinha(int rectMove) {
    rectDirection = rectMove;
    carregarcarrinha();
  }

  void carregarcarrinha() {

    rectY = height - 300;
    rectSize = 200;

    //sem isto o rect da direita para a esquerda comeca na esquerda e nao direita
    if (rectDirection == 2) {
      rectX = -rectSize / 2;
    } else if (rectDirection == 3) {
      rectX = width + rectSize / 2;
    } else {
      rectX = width / 2;
    }
  }

  void update() {
    //carrinha a diminuir o size
    if (rectDirection == 1) {
      rectX = width/3 + 100;
      fill(150);
      rect(rectX, rectY, rectSize, rectSize);
      if (rectSize >= minRectSize) {
        rectSize -= 1;
        rectY -= 0.5;
      } else {
        rectSize = 250;
        rectY = height - 300;
      }
      //carrinha vai para a direita
    } else if (rectDirection == 2) {
      rectY = height - 400;
      rectX += 3;
      if (rectX - rectSize / 2 >= width) {
        rectX = -rectSize / 2;
      }
      //carrinha vai para a esquerda
    } else if (rectDirection == 3) {
      rectY = height - 400;
      rectX -= 3;
      if (rectX + rectSize / 2 <= 0) {
        rectX = width + rectSize / 2;
      }
      //comunidade de carrinhas
    } else if (rectDirection == 4) {
      rectX = width/2 - 100;
      for (int i = 0; i < 7; i++) {
        int vanX = (frameCount + i * 180) % width;
        fill(150);
        rect(vanX - 50, vanY - 25, 100, 50);
        fill(0);
      }
      //ainda nao sei
    } else if (rectDirection == 5) {
      rectX = width/2 - 100;
    }

    noStroke();
    fill(150);
    rect(rectX, rectY, rectSize, rectSize/2);
  }
}
