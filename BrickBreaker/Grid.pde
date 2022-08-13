class Grid {
  int rows;
  int cols;
  Brick grid[][];
  
  Grid(int r, int c) {
    rows = r;
    cols = c;
    grid = new Brick[cols][rows];
    int size = (width - 100) / c;
    
    for (int rs = 0; rs < grid.length; rs++) {
      for (int cs = 0; cs < grid[rs].length; cs++) {
        grid[rs][cs] = new Brick(rs * size + 50, 2 * cs * size / rows + 50, size, color(random(255), random(255), random(255)));
      }
    }
  } //Grid constructor
  
  void showGrid() {
    for (int r = 0; r < grid.length; r++) {
      for (int c = 0; c < grid[r].length; c++) {
        grid[r][c].display(b);
      } //cols
    } //rows
  } //showGrid
  
} //Grid class
