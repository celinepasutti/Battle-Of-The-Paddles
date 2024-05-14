class Ball extends Circle {
  //class vars
  float xSpeed, ySpeed, xSpeedChange, ySpeedChange;
  float paddlex, paddley, paddlew, paddleh;
  Boolean right = false;
  Boolean scoreCondition = false;
  Fireworks fireworks;

  Ball (color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    xSpeed = 3*xSpeedChange();
    ySpeed = 3*ySpeedChange();
    xSpeedChange = 1.2; //zoom zoom zoom zoom zoom zoom
    ySpeedChange = 1.2;
  }

  //methods
  float xSpeedChange() {
    float xSpeedChange = int (random(-2, 2));
    while (xSpeedChange == 0) {
      xSpeedChange = int (random(-2, 2));
    }
    return xSpeedChange;
  }

  float ySpeedChange() {
    float ySpeedChange = int (random(-2, 2)); //idk how but changing this to anything other than two literally breaks the laws of physics so leave it alone....
    while (ySpeedChange == 0) {
      ySpeedChange = int (random(-2, 2));
    }
    return ySpeedChange;
  }

  void draw() {
    ball();
    move();
    //pause();
    if (scoreCondition == true) {
      this.x = xStart;
      this.y = yStart;
      fireworks.draw();
    }

    paddleUpdate(shapes.get(3).x, shapes.get(4).x, shapes.get(3).y, shapes.get(4).y, shapes.get(3).w, shapes.get(4).w, shapes.get(3).h, shapes.get(4).h);

    //onePlayerPaddle();
    //onlyChild();
  }

  void move() {
    bounce();
    this.x += xSpeed * xSpeedChange;
    this.y += ySpeed * ySpeedChange;

    if (this.x < (tablew*1/2)) {
      this.right = true;
    } else {
      this.right = false;
    }
  }

  void bounce() {
    if (this.right == false) {
      if (this.x > tablew - (w/2)) {
        netExplosion(x, y, 0.5);
        scoreCondition = true;
        shapes.get(6).scoreCondition = true;
      }
      if (this.x > (paddlex - (w/2)) && this.y > paddley && this.y < (paddley + paddleh)) {
        if (this.x < paddlex + w) {
          this.x = (paddlex - (w/2));
          this.xSpeed *= -1;
        } else {
          this.xSpeed *= -1;
        }
      }
    } else {
      if (this.x < tablex + (w/2)) {
        netExplosion(x, y, 0.5);
        scoreCondition = true;
        shapes.get(7).scoreCondition = true;
      }
      if (this.x < (paddlex + paddlew + (w/2)) && y > paddley && y < (paddley + paddleh)) {
        if (this.x > paddlex - w) {
          this.x = (paddlex + paddlew + (w/2));
          this.xSpeed *= -1;
        } else {
          this.xSpeed *= -1;
        }
      }
    }
    if (this.y < tabley + (w/2) || this.y > (tabley + tableh - (w/2))) {
      this.ySpeed *= -1;
    }
  }

  /*void onePlayerPaddle () {
   if (onePlayer == true) {
   if (this.right == false) {
   if (this.x > tablew*3/4) {
   lPaddle.ballSnipe();
   } else {
   if (this.xSpeed > 0) { // keep this line if you want the paddle to not move after x direction goes back to the other direction.
   lPaddle.closeIsh();
   }
   }
   } else {
   lPaddle.newGame();
   }
   }
   }
   
   void onlyChild() {
   if (onePlayer == false && twoPlayer == false) {
   if (this.right == false) {
   rPaddle.newGame();
   if (this.x > tablew*3/4) {
   lPaddle.ballSnipe();
   } else {
   if (this.xSpeed > 0) {
   lPaddle.closeIsh();
   }
   }
   } else {
   lPaddle.newGame();
   if (this.x < tablew*1/4) {
   rPaddle.ballSnipe();
   } else {
   if (this.xSpeed < 0) {
   rPaddle.closeIsh();
   }
   }
   }
   }
   }
   
   void pause() {
   if (paused == true) {
   this.x = xStart;
   this.y = yStart;
   fill(black);
   rect(0, 0, appWidth, appHeight);
   fill(defaultCol);
   if (scoreCondition == true) {
   fill(white);
   createText("Score! Press SPACE to resume.", 0, 0, appWidth, appHeight);
   fill(defaultCol);
   } else {
   fill(white);
   createText("New game! Select player number to start.", 0, 0, appWidth, appHeight);
   fill(defaultCol);
   oneP.draw();
   twoP.draw();
   
   rPaddle.newGame();
   lPaddle.newGame();
   }
   }
   }*/

  void paddleUpdate(float rpaddlexParameter, float lpaddlexParameter, float rpaddleyParameter, float lpaddleyParameter, float rpaddlewParameter, float lpaddlewParameter, float rpaddlehParameter, float lpaddlehParameter) {
    if (this.right == true) {
      paddlex = rpaddlexParameter;
      paddley = rpaddleyParameter;
      paddlew = rpaddlewParameter;
      paddleh = rpaddlehParameter;
    } else {
      paddlex = lpaddlexParameter;
      paddley = lpaddleyParameter;
      paddlew = lpaddlewParameter;
      paddleh = lpaddlehParameter;
    }
  }

  void netExplosion(float xParameter, float yParameter, float gravityParameter) {
    fireworks = new Fireworks(0, xParameter, yParameter, 0, 0, gravityParameter);
    fireworks.tableUpdate(shapes.get(0).x, shapes.get(0).y, shapes.get(0).w, shapes.get(0).h);

    this.xSpeed *= xSpeedChange();
    this.ySpeed *= ySpeedChange();
  }

  void reset() {
  }

  void keyPressed() {
  }

  void keyReleased() {
  }

  /*void endPauseKP() {
   if (paused == true && key == ' ') {
   paused = false;
   scoreCondition = false;
   fireworks.pauseUpdate();
   }
   }
   
   void endPauseMP() {
   if (paused == true) {
   paused = false;
   scoreCondition = false;
   fireworks.pauseUpdate();
   }
   }*/
}
//RESP:::
//NETEXPLOSION
