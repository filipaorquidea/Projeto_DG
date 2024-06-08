 
Carrinha carrinha;
Cenario cenario;
Personagem personagem;
FlowField flowField;

void setup() {
  size(1280, 720);

  frameRate(30);

  int startDirection = int(random(1, 3));
  cenario = new Cenario(startDirection);

  int rectMove = int(random(1, 6));
  carrinha = new Carrinha(rectMove);

  int personmove = int(random(1, 6));
  personagem = new Personagem(personmove);

  //flowField = new FlowField(20, 300, height);
}

void draw() {
  background(255);

  frameCount++;

  cenario.update();
  cenario.display();
  //flowField.drawContinuousLine();
  carrinha.update();
  carrinha.display();
  personagem.update();
  personagem.display();
}
