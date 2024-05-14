
void carregarelements() {
  carrega = true;

  rectX = width/2;
  rectY = height - 300;
  rectSize = 200;
  circleSize = 50;
  circleX = 50;

  circleX = (circleDirection == 1) ? -circleSize / 2 : width + circleSize / 2;
  if (rectDirection == 2) {
    rectX = -rectSize / 2;
  } else if (rectDirection == 3) {
    rectX = width + rectSize / 2;
  } else {
    rectX = width / 2;
  }
}

void elements() {
  if (!carrega) {
    carregarelements();
  }

  //ceu
  fill(150, 230, 255);
  rect(0, 150, width * 2, 300);

  //chão
  fill(200, 170, 100);
  rect(0, 550, width * 2, 500);

  //carrinha
  fill(230);
  noStroke();
  rect(rectX, rectY, rectSize, rectSize);

  if (rectDirection == 1) {
    if (rectSize > minRectSize) {
      rectSize -= 1;
      rectY -= 0.5;
    } else {
      rectSize = 500;
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
  }

  //sol
  fill(255, 220, 100);
  noStroke();
  ellipse(circleX, 50, 70, 70);

  circleX += 2 * circleDirection;

  if (circleDirection == 1) {
    if (circleX - circleSize / 2 >= width) {
      circleX = -circleSize / 2;
    }
  } else {
    if (circleX + circleSize / 2 <= 0) {
      circleX = width + circleSize / 2;
    }
  }
}
