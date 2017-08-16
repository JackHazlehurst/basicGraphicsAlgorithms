/**
 * Draws a naive line, will only work if line is in NE octant
 * ie the gradient is 0 to -1 (-1 as the y axis increases as it goes down)
 */
void naiveLine(int x0, int y0, int x1, int y1) {
  float m, c;//gradient, y intercept 
  int x, y;//current x, y position 

  m = ((float)(y1 - y0)) / ((float)(x1 - x0));
  c = y0 - m*x0;
  x = x0;
  y = y0;
  
  println(m);

  while (x <= x1) {
    float yi;//temp variable for new y

    point(x, y);

    //determines which pixel to draw next
    x++;
    yi = m*x + c;
    y = round(yi);
  }
}