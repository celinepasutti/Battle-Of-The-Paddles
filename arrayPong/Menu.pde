class Menu extends Rectangle {
  
    //Button oneP = new Button("ONE PLAYER", int(appWidth*1/40), myTable.col, appWidth*1/5, appHeight*3/5, appWidth*1/5, appHeight*1/5);
    //Button twoP = new Button("TWO PLAYERS", int(appWidth*1/40), myTable.col, appWidth*3/5, appHeight*3/5, appWidth*1/5, appHeight*1/5);
  

  Menu (color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    font = createFont("MS UI Gothic", 55);
  }

  void draw() {
    rectangle();
  }

  void reset() {
  }

  void keyPressed() {
  }

  void keyReleased() {
  }
}
