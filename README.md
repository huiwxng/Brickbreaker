Name: Hui Wang

Name: Jeremy Kwok

Class Period: 9th


## Brickbreaker Program Design.

### Classes:
  1. Ball
  2. Brick
  3. Paddle
  4. Grid

---

### Ball Class
Instance variables:
  - `int cx, cy`: position of the ball.
  - `int xVel, yVel`: speed of the ball.
  - `int radius`: size of the ball.
  - `color c`: fill color for the ball.

Methods:
  - Constructor: `Ball(int x, int y, int xv, int yv, int r, color f)`
    - Sets each instance variable to the corresponding argument.
  - `void display()`
    - Draws a filled in circle using the position, size and color instance variables.
  - `void move()`
    - Changes the `cx` and `cy` instance variables based on the `xVel` and `yVel` values.
    - Bounces off the edges of the screen.
  - `void bounceBrick(other Brick)`
    - Detects the brick.
    - Makes the ball bounce off the brick by negating the `yVel`.
  - `void bouncePaddle(other Paddle)`
    - Detects the different zones of the paddle.
    - Makes the ball bounce off differently depending on the zone it has hit.
  
---

### Brick Class
Instance variables:
  - `int x, y`: position of the brick.
  - `int size`: size of the brick.
  - `int mode`: mode of the brick (hit or still standing).

Methods:
  - Constructor: `Brick(int zx, int zy, int zsize, int zmode)`
  - `void display()`
	- Display brick depending on its mode (display if new, don’t display if hit)


---

### Paddle Class
Instance variables:
  - `int x, y`: position of the paddle.
  - `int size`: size of the paddle.

Methods:
  - Constructor: `Paddle(mouseX, py, pSize)`
  - `void display()`
	- displays the paddle
  - `void move()`
	- Paddle follows the mouse’s horizontal movement
	- make the paddle always stay visible

---

### Grid Class
Instance variables:
  - `int rows, cols, mode`: rows and columns and the mode of the grid

Methods:
  - Constructor: `grid(int zrows, int zcols, int zmode)`
	- Sets each instance variable to the corresponding argument.
  - `void display()`
	- create a grid of bricks with rows rows and cols columns 
  - `void changeMode()`
	- change mode of brick if the brick is hit for the first time
---


