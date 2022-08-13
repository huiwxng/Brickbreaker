class Brick {
  int x, y; //position of the brick
  int size; //size of the brick
  int rectW, rectH;
  int state;
  color c;
  
  Brick(int zx, int zy, int zsize, color zc) {
    x = zx;
    y = zy;
    size = zsize;
    rectW = size;
    rectH = 2 * size / r;
    c = zc;
  }
  
  void display(Ball b) {
    if (state == BLOCK) {
      fill(c);
      bounce(b);
    }
    if (state == SPACE) {
      fill(0);
    }
    rect(x, y, rectW, rectH);
  }
  
  void bounce(Ball b) {
    if ((b.cy >= y - b.radius) && (b.cy <= y) && (b.cx >= x) && (b.cx <= x + rectW)) {
      b.yVel *= -1;
      state = SPACE;
      count -= 1;
    } //top
    if ((b.cy <= y + rectH + b.radius) && (b.cy >= y + rectH) && (b.cx >= x) && (b.cx <= x + rectW)) {
      b.yVel *= -1;
      state = SPACE;
      count -= 1;
    } //bottom
    if ((b.cx >= x - b.radius) && (b.cx <= x) && (b.cy >= y) && (b.cy <= y + rectH)) {
      b.xVel *= -1;
      state = SPACE;
      count -= 1;
    } //left
    if ((b.cx >= x + rectW) && (b.cx <= x + rectW + b.radius) && (b.cy >= y) && (b.cy <= y + rectH)) {
      b.xVel *= -1;
      state = SPACE;
      count -= 1;
    } //right
  } //bounce
  
} //Brick class
