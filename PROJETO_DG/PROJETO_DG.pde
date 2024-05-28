
Carrinha carrinha;
Cenario cenario;
Personagem personagem;

void setup() {
  size(1280, 720);

  frameRate(30);

  int startDirection = int(random(1, 3));
  
  cenario = new Cenario(startDirection);

  int rectDirection = int(random(1, 5));
  carrinha = new Carrinha(rectDirection);

  personagem = new Personagem((random(1) < 0.5 ? -35 : width + 35), random(1) < 0.5 ? 1 : -1);
}

void draw() {
  background(255);

  frameCount++;

  cenario.update();
  cenario.display();
  carrinha.update();
  carrinha.display();
  personagem.update();
  personagem.display();
}

void randomizeMovement() {
  personagem.randomizeDirection();
}
