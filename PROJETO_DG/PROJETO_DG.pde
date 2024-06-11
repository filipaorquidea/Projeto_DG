Carrinha carrinha;
Cenario cenario;
Personagem personagem;

String nomePastaOutput;
int cenarioRandom;

PImage chaodia, chaomadrug, chaonoite, chaopor;
PImage carrinhaNoite, carrinhaMadrug, carrinhaDia, carrinhaPor;
PImage carrinhaNoiteInv, carrinhaMadrugInv, carrinhaDiaInv, carrinhaPorInv; 
PImage trasNoite, trasMadrug, trasDia;
PImage catoNoite, catoDia;
PImage persoDia, persoNoite, persoMadrug;
//PShape chao, sombra;

void setup() {
  size(1280, 720);

  /*chao = loadShape("dunas.svg");
   sombra = loadShape("sombra.svg");*/

  chaodia = loadImage("chaodia.png");
  chaomadrug = loadImage("chaomadrugada.png");
  chaonoite = loadImage("chaonoite.png");
  chaopor = loadImage("chaopordosol.png");

  carrinhaNoite = loadImage("carrinhanoite.png");
  carrinhaMadrug = loadImage("carrinhamadrugada.png");
  carrinhaDia = loadImage("carrinhadia.png");
  carrinhaPor = loadImage("carrinhapor.png");
  
  carrinhaNoiteInv = loadImage("carrinhanoiteinv.png");
  carrinhaMadrugInv = loadImage("carrinhamadrugadainv.png");
  carrinhaDiaInv = loadImage("carrinhadiainv.png");
  carrinhaPorInv = loadImage("carrinhaporinv.png");

  trasNoite = loadImage("trasnoite.png");
  trasMadrug = loadImage("trasmadrug.png");
  trasDia = loadImage("trasdia.png");
  
  catoNoite = loadImage("catonoite.png");
  catoDia = loadImage("catodia.png");
  
  persoDia = loadImage("persoDia.png");
  persoNoite = loadImage("persoNoite.png");
  persoMadrug = loadImage("persoMadru.png");

  frameRate(30);

  cenarioRandom = int(random(1, 5));
  print(cenarioRandom);

  int startDirection = int(random(1, 2));
  cenario = new Cenario(startDirection);

  int rectMove = int(random(1, 6));
  carrinha = new Carrinha(rectMove);

  int personmove = int(random(1, 6));
  personagem = new Personagem(personmove);

  nomePastaOutput = System.currentTimeMillis() + "";
}

void draw() {
  background(255);


  frameCount++;

  cenario.update();
  carrinha.update();
  personagem.update();

  //save(sketchPath("/animacao" + nomePastaOutput + "/" + nf(frameCount, 6) + ".png"));
}
