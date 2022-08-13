class Paddle {
  int x, y; //position of the paddle
  int rectW, rectH; //width and height of the paddle
  
  Paddle() {
    x = width / 2 - rectW;
    y = height - 75;
    rectW = width / 4;
    rectH = 25;
  } //constructor
  
  void display() {
    rect(x, y, rectW, rectH);
  } //display
  
  void move() {
    if ((mouseX >= rectW / 2) && (mouseX <= width - rectW / 2)) {
      x = mouseX - (p.rectW / 2);
    }
  } //move
  
  void bounce(Ball b) {
    if ((b.cy + b.radius >= y) && (b.cx >= x) && (b.cx < x + (rectW * (1 / 4)))) {
      if (b.xVel > 0) {
        b.xVel += 1;
      }
      else if (b.xVel < 0) {
        b.xVel -= 1;
      }
      else if (b.xVel == 0) {
        b.xVel = -1;
      }
    } //top 0
    
    if ((b.cy + b.radius >= y) && (b.cx >= x + (rectW * (1 / 4))) && (b.cx < x + (rectW * (2 / 4)))) {
      b.yVel = -b.yVel - 1;
    } //top 1
    
    if ((b.cy + b.radius >= y) && (b.cx >= x + (rectW * (2 / 4))) && (b.cx < x + (rectW * (3 / 4)))) {
      b.yVel = -b.yVel - 1;
    } //top 2
    
    if ((b.cy + b.radius >= y) && (b.cx >= x + (rectW * (3 / 4))) && (b.cx <= x + rectW)) {
      b.yVel = -b.yVel - 1;
      if (b.xVel > 0) {
        b.xVel += 1;
      }
      else if (b.xVel < 0) {
        b.xVel -= 1;
      }
      else if (b.xVel == 0) {
        b.xVel = 1;
      }
    } //top 3
  } //bounce
  
} //Paddle class
