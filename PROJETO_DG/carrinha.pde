

class Carrinha {
  int rectX, rectY;
  int rectSize;
  int minRectSize = 70;
  int rectDirection;
  int vanY, vanX;

  int horario = cenarioRandom;
  PImage carrinhaCor, carrinhaCorInv, trasCor;

  Carrinha(int rectMove) {
    rectDirection = rectMove;
    carregarcarrinha();
  }

  void carregarcarrinha() {

    rectY = height - 100;
    rectSize = 300;

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

    if (horario == 1) {
      carrinhaCor = carrinhaNoite;
      carrinhaCorInv = carrinhaNoiteInv;
      trasCor = trasNoite;
    } else if (horario == 2) {
      carrinhaCor = carrinhaMadrug;
      carrinhaCorInv = carrinhaMadrugInv;
      trasCor = trasMadrug;
    } else if (horario == 3) {
      carrinhaCor = carrinhaDia;
      carrinhaCorInv = carrinhaDiaInv;
      trasCor = trasDia;
    } else if (horario == 4) {
      carrinhaCor = carrinhaPor;
      carrinhaCorInv = carrinhaPorInv;
      trasCor = trasMadrug;
    }


    //carrinha a diminuir o size
    if (rectDirection == 1) {
      rectX = width/3 + 100;
      
      image(trasCor, rectX, rectY, rectSize, rectSize);
      if (rectSize >= minRectSize) {  
        rectSize -= 1;
        rectY -= 0.5;
      } else {
        rectSize = 300;
        rectY = height - 50;
      }
      //carrinha vai para a direita
    } else if (rectDirection == 2) {
      rectY = height - 240;
      rectX += 3;
      image(carrinhaCor, rectX, rectY, rectSize, rectSize/2);
      if (rectX - rectSize / 2 >= width) {
        rectX = -rectSize / 2;
      }
      //carrinha vai para a esquerda
    } else if (rectDirection == 3) {
      rectY = height - 240;
      rectX -= 3;
      image(carrinhaCorInv, rectX, rectY, rectSize, rectSize/2);

      if (rectX + rectSize / 2 <= 0) {
        rectX = width + rectSize / 2;
      }
      
      //comunidade de carrinhas
    } else if (rectDirection == 4) {
      
      for (int i = 0; i < 4; i++) {
        vanX = (frameCount + i * 320) % width;
        vanY = height - 240;
        fill(150);
        image(carrinhaCor, vanX, vanY, rectSize, rectSize/2);
        fill(0);
      }
    } else if (rectDirection == 5) {
      rectX = width/2 - 100;
      rectY = height - 240;
      image(carrinhaCor, rectX, rectY, rectSize, rectSize/2);
    }
  }
}
