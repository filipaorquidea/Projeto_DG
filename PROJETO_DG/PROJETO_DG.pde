
float rectX, rectY;
float rectSize;
float circleX;

void setup() {
  size(1000, 800);

  rectMode(CENTER);
  ellipseMode(CENTER);

  rectX = width/2;
  rectY = height - 310;
  rectSize = 500;
  circleX = 50;
}

void draw() {
  background(255);


  circleX = (circleX + 2) % width;

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



  fill(200);
  noStroke();
  rect(rectX, rectY, rectSize, rectSize);

  fill(255, 200, 0);
  noStroke();
  ellipse(circleX, 50, 70, 70);
}
