class ScoreBoard extends Rectangle {
  //class vars
  int textSize;

  ScoreBoard(color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    this.text = str(this.score);
    textSize = int(appWidth*1/40);
    font = createFont("MS UI Gothic", 55);
    this.score = 0;
  }

  //methods
  void draw() {
    rectangle();
    fill(white);
    createText(this.text , this.textSize, this.x, this.y, this.w, this.h);
    fill(defaultCol);


    if (this.scoreCondition == true) {
      println("score!");
      this.score += 1;
      this.text = str(this.score);
      this.scoreCondition = false;
    }
  }

  void reset() {
    this.score = 0;
    this.text = str(this.score);
  }

  void keyPressed() {
  }

  void keyReleased() {
  }
  
  void mousePressed() { 
  }
}
