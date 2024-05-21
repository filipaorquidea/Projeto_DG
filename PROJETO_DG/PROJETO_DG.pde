
float triangleX;
float triangleY;
float rectX, rectY;
float rectSize;
float circleSize;
float circleX;
int minRectSize = 50;
int circleDirection = 1;
int circleColor = 1;
int rectDirection = 1;
int frameCount = 0;

int[][] colors = {
  {230, 100, 100},
  {255, 200, 100},
  {230, 200, 100},
  {230, 220, 100},
  {255, 220, 100}
};

boolean carrega = false;

void setup() {
  size(1000, 800);

  frameRate(30);

  rectMode(CENTER);
  ellipseMode(CENTER);

  circleDirection = random(1) < 0.5 ? 1 : -1;

  circleColor = int(random(1, 3));

  rectDirection = int(random(1, 6));

  triangleX = random(200, width - 200);
  triangleY = random (150, 800);
}

void draw() {
  background(255);

  frameCount++;

  elements();
  carrinha();
  personagem();
}
