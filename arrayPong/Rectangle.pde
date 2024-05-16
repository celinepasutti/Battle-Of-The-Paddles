abstract class Rectangle extends Shape {
  // class vars
  PFont font;
  String text;
  int textSize;
  
  Rectangle(color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
  }

  //methods
  abstract void draw();
  
  abstract void keyPressed();
  abstract void keyReleased();
  abstract void mousePressed();
  
  abstract void reset();

  void rectangle() {
    fill (col);
    rect(x, y, w, h);
    fill(defaultCol);
  }
  
  void createText (String text, int textSize, float x, float y, float w, float h) {
    fill(white);
    textAlign (CENTER, CENTER);
    textFont(font, textSize);
    text(text, x, y, w, h);
    fill(defaultCol);
  }
}
