class Menu extends Rectangle {
  
  Menu (color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    font = createFont("MS UI Gothic", 55);
  }
  
  void draw() {
    rectangle();
  }
  
  void reset() {
    
  }
}
