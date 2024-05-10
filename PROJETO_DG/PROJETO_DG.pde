
float rectX, rectY;
float rectSize;
float circleX;

boolean carrega = false;

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

  elements();
}
