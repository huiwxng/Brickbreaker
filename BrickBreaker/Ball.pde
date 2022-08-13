class Ball {
  int cx, cy; //position of the ball
  int xVel, yVel; //speed of the ball
  int radius; //size of the ball
  color c; //fill color for the ball
  int mult; //multiplier for xVel
  
  Ball (int x, int y, int xv, int yv, int r, color f) {
    cx = x;
    cy = y;
    mult = int(random(-1, 2));
    if (mult == 0) {
      mult = int(random(-1, 2));
    }
    xVel = xv * mult;
    yVel = yv;
    radius = r;
    c = f;
  } //constructor
  
  void display() {
    fill(c); //fill color
    circle(cx, cy, radius * 2); //circle
  } //display
  
  void move() {
    cx += xVel;
    cy += yVel;
    
    if ((cx <= radius) && (cy >= radius) && (cy <= height - radius)) {
      xVel *= -1;
    } //bounce off left edge
    
    if ((cx >= width - radius) && (cy >= radius) && (cy <= height - radius)) {
      xVel *= -1;
    } //bounce off right edge
    
    if (cy <= radius) {
      yVel *= -1;
    } //bounce off top edge
    
    if (cy - radius >= height) {
      if (lives > 0) {
        cx = width / 2;
        cy = height / 2 + 100;
        xVel = int(random(1, 3)) * mult;
        yVel = int(random(1, 3));
        lives --;
      }
    } //bottom side
  } //move
  
}// Ball class
