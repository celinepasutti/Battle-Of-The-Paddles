abstract class Shape {
  //class vars
  float x, y, w, h, xStart, yStart, xSpeed, ySpeed, xSpeedStart, ySpeedStart, tablex, tabley, tablew, tableh;
  int score;
  color col, defaultCol;
  Boolean scoreCondition = false;
  Boolean right = false;

  Shape(color col, float x, float y, float w, float h) {
    this.col = col;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    defaultCol = 0;
    this.xStart = x;
    this.yStart = y;
  }

  //methods
  abstract void draw();

  abstract void keyPressed();
  abstract void keyReleased();
  abstract void mousePressed();

  abstract void reset();

  void tableUpdate(float tablexParameter, float tableyParameter, float tablewParameter, float tablehParameter) {
    tablex = tablexParameter;
    tabley = tableyParameter;
    tablew = tablewParameter;
    tableh = tablehParameter;
  }

  void sideCheck() {
    if (this.x < (tablew*1/2)) {
      this.right = false;
    } else {
      this.right = true;
    }
  }
  
  
}
