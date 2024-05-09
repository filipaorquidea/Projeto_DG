
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
  
  // Generate a random number between 0 and 11
  //int randomNum = int(random(0, 12));
  
  // Choose animation based on the random number
  //switch(randomNum) {
    //case 0:
      anim1();
      //break;
    //case 1:
     /*    anim2();
      break;
    case 2:
   anim3();
      break;
    case 3:
      anim4();
      break;
    case 4:
      anim5();
      break;
    case 5:
      anim6();
      break;
    case 6:
      anim7();
      break;
    case 7:
      anim8();
      break;
    case 8:
      anim9();
      break;
    case 9:
      anim10();
      break;
    case 10:
      anim11();
      break;
    case 11:
      anim12();
      break;*/
  //}
}
