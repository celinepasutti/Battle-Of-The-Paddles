abstract class Shape {
  //class vars
  float x, y, w, h;
  float tablex, tabley, tablew, tableh;
  color col, defaultCol;
  float xStart, yStart;
  Boolean scoreCondition = false;
  Boolean right = false;

  Shape(color col, float x, float y, float w, float h) {
    this.col = col;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    defaultCol = 0; //nightModeCol();
    this.xStart = x;
    this.yStart = y;
  }



  //methods
  abstract void draw();

  abstract void keyPressed();
  abstract void keyReleased();

  abstract void reset();

  void tableUpdate(float tablexParameter, float tableyParameter, float tablewParameter, float tablehParameter) {
    tablex = tablexParameter;
    tabley = tableyParameter;
    tablew = tablewParameter;
    tableh = tablehParameter;
  }

  void sideCheck() {
    if (this.x > (tablew*1/2)) {
      this.right = true;
    } else {
      this.right = false;
    }
  }
}

/* color nightModeCol() { ---------- potential nightMode...
 color nm = 0;
 return nm;
 }*/
