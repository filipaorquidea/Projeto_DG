/*
int[] rect_X = new int[5];
int[] rect_Y = new int[5];

int targetRectIndex = 0; 
boolean triangleMoving = false; 
float triangleX;
float triangleY;

void carregaranim1() {
  carrega = true;

  rectY = height / 5;

  for (int i = 0; i < 5; i++) {
    rect_X[i] = int(random(0, width * 2 - 40)); 
  }
  
  for (int i = 0; i < 5; i++) {
    rect_Y[i] = 750;
  }

  // posiciona a posicao inicial do triangulo
  triangleX = width/2;
  triangleY = height / 2;
}

void anim1() {

  if (!carrega) {
    carregaranim1();
  }

  //ceu
  fill(200);
  noStroke();
  rect(0, 150, width * 2, 300);

  //chao
  fill(100);
  noStroke();
  rect(0, 550, width * 2, 500);

  for (int i = 0; i < 5; i++) {
    fill(0);
    stroke(10);
    rect(rect_X[i] + 100, rect_Y[i], 40, 40);
  }

  //move o triangulo contra o retangulo atual
  if (triangleMoving) {
    float targetX = rect_X[targetRectIndex] + 120; // X-coordinate of the center of the target rectangle
    float targetY = rect_Y[targetRectIndex] + 20; // Y-coordinate of the center of the target rectangle
    
    // calcula a distancia e direcao para mover o triangulo
    float dx = targetX - triangleX;
    float dy = targetY - triangleY;
    
    // move o triangulo uma fracao da distancia em direcao a caixa em cada frame
    float speed = 2; 
    triangleX += dx * speed / dist(triangleX, triangleY, targetX, targetY);
    triangleY += dy * speed / dist(triangleX, triangleY, targetX, targetY);
    
    // confirma se o triangulo chegou ao retangulo
    if (dist(triangleX, triangleY, targetX, targetY) < 1) {
      triangleMoving = false;
      targetRectIndex++; // move se para a proxima caixa
      if (targetRectIndex >= 5) {
        // volta ao primeiro se ja tiver passado por todos
        targetRectIndex = 0;
      }
    }
  } else {
    // da trigger ao movimento para a proxima caixa
    triangleMoving = true;
  }

  fill(0);
  noStroke();
  beginShape(TRIANGLES);
  vertex(triangleX, triangleY - 50);
  vertex(triangleX + 100, triangleY + 200);
  vertex(triangleX + 200, triangleY - 50);
  endShape();
}*/
