
int[] rect_X = new int[5];
int[] rect_Y = new int[5]; // Array to store y-coordinates for each box

int targetRectIndex = 0; // Index of the current target rectangle
boolean triangleMoving = false; 
float triangleX;
float triangleY;

void carregaranim1() {
  carrega = true;

  rectY = height / 5;

  for (int i = 0; i < 5; i++) {
    rect_X[i] = int(random(0, width * 2 - 40)); 
  }
  
  // Generate static y-coordinates for the boxes
  for (int i = 0; i < 5; i++) {
    rect_Y[i] = 750; // Set to a static y-coordinate
  }

  // Set initial position of the triangle to be outside the screen
  triangleX = -100;
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

  // Draw the boxes using the static positions
  for (int i = 0; i < 5; i++) {
    fill(0);
    stroke(10);
    rect(rect_X[i] + 100, rect_Y[i], 40, 40);
  }

  // Move the triangle towards the current target rectangle
  if (triangleMoving) {
    float targetX = rect_X[targetRectIndex] + 120; // X-coordinate of the center of the target rectangle
    float targetY = rect_Y[targetRectIndex] + 20; // Y-coordinate of the center of the target rectangle
    
    // Calculate the distance and direction to move the triangle
    float dx = targetX - triangleX;
    float dy = targetY - triangleY;
    
    // Move the triangle a fraction of the distance towards the target each frame
    float speed = 2; // Adjust speed as needed
    triangleX += dx * speed / dist(triangleX, triangleY, targetX, targetY);
    triangleY += dy * speed / dist(triangleX, triangleY, targetX, targetY);
    
    // Check if the triangle has reached the target rectangle
    if (dist(triangleX, triangleY, targetX, targetY) < 1) {
      triangleMoving = false;
      targetRectIndex++; // Move to the next target rectangle
      if (targetRectIndex >= 5) {
        // Reset to the first rectangle if all rectangles have been visited
        targetRectIndex = 0;
      }
    }
  } else {
    // Trigger the movement towards the next rectangle
    triangleMoving = true;
  }

  // Draw the moving triangle
  fill(0);
  noStroke();
  beginShape(TRIANGLES);
  vertex(triangleX, triangleY - 50);
  vertex(triangleX + 100, triangleY + 200);
  vertex(triangleX + 200, triangleY - 50);
  endShape();
}
