void setup() {
  size(800, 800);
  noLoop();
  noSmooth();
}

void draw() {
  background(255);
  
  stroke(255, 0, 0);
  line(100, 500, 500, 150);
  stroke(0, 0, 255);
  naiveLine(100, 500, 500, 150);
}