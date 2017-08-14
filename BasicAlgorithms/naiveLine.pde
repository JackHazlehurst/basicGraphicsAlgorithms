/**
 * Draws a naive line, will only work if line is in NE octant 
 */
void naiveLine(int x0, int y0, int x1, int y1) {
  float m, c;//gradient, y intercept 
  int x, y;//current x, y position 

  m = (y1 - y0)/(x1 - x0);
  c = y0 - m*x0;
  x = x0;
  y = y0;

  while (x <= x1) {
    float yi;//temp variable for new y

    point(x, y);

    //determines which pixel to draw next
    x++;
    yi = m*x + c;
    y = round(yi);
  }
}