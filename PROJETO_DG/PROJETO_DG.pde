
int rectX, rectY;
int rectSize;

void setup(){
  size(1000, 800);
  
  rectX = width/2 - 250;
  rectY = height - 510;
  rectSize = 500;
}

void draw(){
  
  fill(255, 200, 0);
  noStroke();
  ellipse(50, height/3, 70, 70);
  
  fill(255);
  noStroke();
  rect(rectX, rectY, rectSize, rectSize);
  
}
