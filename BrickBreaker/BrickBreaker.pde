Ball b;
Brick b0;
Paddle p;
Grid g;
int BLOCK = 0;
int SPACE = 1;
int lives;
int r;
int c;
int count;

void setup() {
  size(1000, 1000);
  lives = 5;
  r = 20;
  c = 5;
  count = r * c;
  b = new Ball(width / 2, height / 2 + 100, int(random(1, 3)), int(random(1, 3)), 20, 255);
  p = new Paddle();
  g = new Grid(r, c);
}//setup

void draw() {
  if (lives == 0) {
  stop();
  }
  
  background(0);
  
  p.display();
  p.move();
  p.bounce(b);
  
  g.showGrid();

  b.display();
  b.move();
  
  if (count == 0) {
    stop();
  }
  
  if (lives == 0) {
    stop();
  }
}//draw
