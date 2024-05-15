class Menu extends Rectangle {
  Button oneP;
  Button twoP;

  Menu (color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    font = createFont("MS UI Gothic", 55);
  }

  void draw() {
    

    if (paused == true) {
      rectangle();
      pause();
    }
  }

  void pause() {
    if (this.scoreCondition == true) {
      fill(white);
      createText("Score! Press SPACE to resume.", 0, 0, appWidth, appHeight);
      fill(defaultCol);
    } else {
      fill(white);
      createText("New game! Select player number to start.", 0, 0, appWidth, appHeight);
      fill(defaultCol);
      oneP = new Button("ONE PLAYER", int(appWidth*1/40), shapes.get(0).col, appWidth*1/5, appHeight*3/5, appWidth*1/5, appHeight*1/5);
      twoP = new Button("TWO PLAYERS", int(appWidth*1/40), shapes.get(0).col, appWidth*3/5, appHeight*3/5, appWidth*1/5, appHeight*1/5);
      oneP.draw();
      twoP.draw();
      shapes.get(1).reset();
      shapes.get(2).reset();

      //rPaddle.newGame();
      //lPaddle.newGame();
    }
  }

  void reset() {
  }

  void keyPressed() {
  }

  void keyReleased() {
  }

  void mousePressed() {
    if (paused == true && this.scoreCondition == false) {
      if (mouseX >= oneP.x && mouseX <= (oneP.x + oneP.w) && mouseY >= oneP.y && mouseY <= (oneP.y + oneP.h)) {
        println("one player selected");
        onePlayer = true;
        twoPlayer = false;
        paused = false;
      }
      if (mouseX >= twoP.x && mouseX <= (twoP.x + twoP.w) && mouseY >= twoP.y && mouseY <= (twoP.y + twoP.h)) {
        println("two player selected");
        onePlayer = false;
        twoPlayer = true;
        paused = false;
      }
    }
  }
  
}
