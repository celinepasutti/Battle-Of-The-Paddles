class ScoreBoard extends Rectangle {
  //class vars
  int score = 0;
  int textSize;
  Boolean inNet = false;

  ScoreBoard(color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    this.text = str(this.score);
    textSize = int(appWidth*1/40);
    font = createFont("MS UI Gothic", 55);
  }

  //methods
  void draw() {
    rectangle();
    fill(white);
    createText(this.x, this.y, this.w, this.h);
    fill(defaultCol);

    if (this.inNet == true) {
      scoreUpdate();
      this.inNet = false;
    }
  }

  void scoreUpdate() {
    println("score!");
    this.score += 1;
    this.text = str(this.score);
  }

  void scoreReset() {
    this.score = 0;
    this.text = str(this.score);
  }

  void createText (float x, float y, float w, float h) {
    fill(white);
    textAlign (CENTER, CENTER);
    textFont(font, textSize);
    text(text, x, y, w, h);
    fill(defaultCol);
  }

  void reset() {
  }

  void keyPressed() {
  }

  void keyReleased() {
  }
}
