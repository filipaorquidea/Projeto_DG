void carregarelements() {
  carrega = true;
}

void elements() {
  if (!carrega) {
    carregarelements();
  }


  //ceu
  fill(0, 200, 255);
  rect(0, 150, width * 2, 300);

  //chão
  fill(200, 130, 50);
  rect(0, 550, width * 2, 500);

  //carrinha
  fill(200);
  noStroke();
  rect(rectX, rectY, rectSize, rectSize);

  if (rectSize > 0) {
    rectSize -= 1;
  } else {
    rectSize = 500;
  }

  if (rectY <= rectSize / 2) {
    rectY = height - 310;
  } else {
    rectY -= 0.5;
  }

  //sol
  fill(255, 200, 0);
  noStroke();
  ellipse(circleX, 50, 70, 70);

  /*if((circleX = (circleX + 2) % width) || (circleX = (circleX - 2) % width)){
   random(circleX);
   }*/
}
