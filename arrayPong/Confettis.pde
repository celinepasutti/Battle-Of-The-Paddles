class Confettis extends Menu {

  int amt = 500;
  float[] cx = new float [amt];
  float[] cy = new float [amt];
  float[] cw = new float [amt];

  color[] cc = new color [amt];
  int j = amt;


  Confettis(color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    for (int i=0; i < cx.length; i++) {
      cw[i] = random (appWidth*1/150);
      cx[i] = random(cw[i]*1/2, appWidth-cw[i]*1/2);
      cy[i] = random(cw[i]*1/2, appHeight-cw[i]*1/2);
      cc[i] = color(random(255), random(255), random(255));
    }
  }

  //methods
  void draw() {
    if (partyMode == true ) {
    for (int i=0; i < cx.length; i++) {
      fill(cc[i]);
      rect(cx[i], cy[i], cw[i], cw[i]);
      fill(defaultCol);
    }
    move();
    }
  }

  void move() {
    for (int i=0; i < cx.length; i++) {
      cy[i] += random(2, 4);  
      if (cy[i] > appHeight) {
        cy[i] = 0;
      }
    }
  }

  void reset() {
  }

  void keyPressed() {
  }

  void keyReleased() {
  }
  
  void mousePressed() { 
  }
}
  
  
