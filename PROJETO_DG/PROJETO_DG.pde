
float rectX, rectY;
float rectSize;
float circleSize;
float circleX;
int circleDirection = 1;
int rectDirection = 1;

boolean carrega = false;

void setup() {
  size(1000, 800);

  rectMode(CENTER);
  ellipseMode(CENTER);

  circleDirection = random(1) < 0.5 ? 1 : -1;

  rectDirection = int(random(1, 4));
}

void draw() {
  background(255);

  elements();
}
