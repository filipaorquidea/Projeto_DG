//chão, céu e sol

//sol
float angulo= 180;
float raio = width//9;

void carregarelements() {
  carrega = true;

  circleSize = 50;
  circleX = 50;

  circleX = (circleDirection == 1) ? -circleSize / 2 : width + circleSize / 2;
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

  //sol
  if (circleColor == 1) {
    fill(255, 0, 0);
  } else if (circleColor == 2) {
    fill(0, 255, 0);
  } else if (circleColor == 3) {
    fill(0, 0, 255);
  }
  
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
