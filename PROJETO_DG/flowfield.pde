class FlowField {
  PVector[][] field;
  int cols, rows;
  int resolution;
  int yStart, yEnd;
  int lineSpacing = 20;

  FlowField(int r, int yStart, int yEnd) {
    this.yStart = yStart;
    this.yEnd = yEnd;
    resolution = r;
    cols = width / resolution;
    rows = (yEnd - yStart) / resolution;
    field = new PVector[cols][rows];
    init();
  }

  void init() {
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        float angle = noise(i * 0.1, j * 0.1) * TWO_PI;
        field[i][j] = PVector.fromAngle(angle);
      }
    }
  }

  PVector lookup(PVector lookup) {
    int column = int(constrain(lookup.x / resolution, 0, cols - 1));
    int row = int(constrain((lookup.y - yStart) / resolution, 0, rows - 1));
    return field[column][row].copy();
  }

  void displayContinuousLines() {
    for (int j = 0; j < rows; j++) {
      PVector start = new PVector(0, j * resolution + yStart);
      PVector end = new PVector(width, j * resolution + yStart);
      drawContinuousLine(start, end);
    }
  }

  void drawContinuousLine(PVector start, PVector end) {
    stroke(0, 100);
    line(start.x, start.y, end.x, end.y);
  }
}
