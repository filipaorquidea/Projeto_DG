void carregarcarrinha() {

  carrega = true;

  rectX = width/2;
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

void carrinha() {
  if (!carrega) {
    carregarcarrinha();
  }

  //carrinha
  fill(150);
  rect(rectX, rectY, rectSize, 50);

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
    // Desenha comunidade a viajar
    int rectY = height/2;
    for (int i = 0; i < 6; i++) {
      int rectX = (frameCount * 2 + i * 167) % width;
      fill(150);
      rect(rectX - 50, rectY - 25, 100, 50);
      fill(0);
      ellipse(rectX - 80, rectY, 15, 15);
      ellipse(rectX - 20, rectY, 15, 15);
    }
  } else if (rectDirection == 5) {
    // Desenha comunidade de carrinhas
    int rectY = height/2;
    for (int i = 0; i < 5; i++) {
      int rectX = 100 + i * 140;
      fill(150);
      rect(rectX - 50, rectY - 25, 100, 50);
      fill(0);
      ellipse(rectX - 25, rectY, 15, 15);
      ellipse(rectX + 25, rectY, 15, 15);
      fill(255, 0, 0);
      ellipse(rectX, rectY, 20, 20);
    }
  }
}
