class Paddle extends Rectangle {
  //class vars
  Boolean up, down;
  //float ySpeed, ySpeedStart;
  float hStart;
  float ballx, bally, ballDirection;
  float buffer;

  Paddle(color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    hStart = h;
    ySpeedStart = 9;
    ySpeed = ySpeedStart;
    this.up = false;
    this.down = false;
    this.buffer = (random(-200, 200));
  }

  //methods
  void draw() {
    rectangle();
    sideCheck();

    if (twoPlayer == false) {
      if (this.right == true) {
        ballUpdate(shapes.get(4).x, shapes.get(4).y, shapes.get(4).xSpeed);
        rightPaddleAuto();
      }
      if (onePlayer == false && this.right == false) {
        ballUpdate(shapes.get(4).x, shapes.get(4).y, shapes.get(4).xSpeed);
        leftPaddleAuto();
      }
    }

    if (this.up == true) {
      movePaddleUp();
    }
    if (this.down == true) {
      movePaddleDown();
    }
  }

  void movePaddleUp() {
    y -= ySpeed;
    if (y < tabley) { //error catch
      y = tabley;
    }
  }

  void movePaddleDown() {
    y += ySpeed;
    if ((y + this.h) > (tabley + tableh)) {
      y = ((tabley + tableh) - this.h);
    }
  }

  void ballSnipe() {
    if (this.y < (bally - this.h*1/2)) {
      this.y += ySpeed;
    }
    if (this.y > (bally - this.h*1/2)) {
      this.y -= ySpeed;
    }
    if (this.y < tabley) { //error catch
      this.y = tabley;
    }
    if ((y + this.h) > (tabley + tableh)) {
      this.y = ((tabley + tableh) - this.h);
    }
  }

  void closeIsh() {
    if (this.y < (bally - this.h*1/2 + this.buffer)) {
      this.y += ySpeed;
    }
    if (this.y > (bally - this.h*1/2 + this.buffer)) {
      this.y -= ySpeed;
    }
    if (this.y < tabley) { //error catch
      this.y = tabley;
    }
    if ((y + this.h) > (tabley + tableh)) {
      this.y = ((tabley + tableh) - this.h);
    }
  }

  void startxy() {
    if (this.y < yStart) {
      this.y += ySpeed;
    }
    if (this.y > yStart) {
      this.y -= ySpeed;
    }
  }

  void ballUpdate(float ballxParameter, float ballyParameter, float ballDirectionParameter) {
    ballx = ballxParameter;
    bally =  ballyParameter;
    ballDirection = ballDirectionParameter;
  }

  void keyPressed() {
    if (this.right == false ) {
      if (onePlayer == true || twoPlayer == true ) { //WASD
        if (key == 'w' || key == 'W') {
          this.down = false;
          this.up = true;
        }
        if ( key == 's' || key == 'S') {
          this.up = false;
          this.down = true;
        }
      }
    } else {
      if (twoPlayer == true) { //ARROWS
        if (key == CODED && keyCode == UP) {
          this.down = false;
          this.up = true;
        }
        if (key == CODED && keyCode == DOWN) {
          this.up = false;
          this.down = true;
        }
      }
    }
  }


  void keyReleased() {
    if (this.right == false ) {
      if (onePlayer == true || twoPlayer == true ) { //WASD
        if (key == 'w' || key == 'W') {
          this.down = false;
          this.up = false;
        }
        if ( key == 's' || key == 'S') {
          this.up = false;
          this.down = false;
        }
      }
    } else {
      if (twoPlayer == true) { //ARROWS
        if (key == CODED && keyCode == UP) {
          this.down = false;
          this.up = false;
        }
        if (key == CODED && keyCode == DOWN) {
          this.up = false;
          this.down = false;
        }
      }
    }
  }

  void reset() {
    this.h = hStart;
    this.ySpeed = ySpeedStart;

    if (shapes.get(4).scoreCondition == false) {
      startxy();
    }
  }

  void rightPaddleAuto() {
    if (shapes.get(4).right == true) {
      if (ballx > tablew*3/4) {
        ballSnipe();
      } else {
        if (ballDirection > 0) { // keep this line if you want the paddle to not move after x direction goes back to the other direction.
          closeIsh();
        }
      }
    } else {
      startxy();
    }
  }

  void leftPaddleAuto() {
    if (shapes.get(4).right == false) {
      if (ballx < tablew*1/4) {
        ballSnipe();
      } else {
        if (ballDirection < 0) {
          closeIsh();
        }
      }
    } else {
      startxy();
    }
  }

  void mousePressed() {
  }
}

//RESP:::
//GIVE X, Y, W, H to BALL
//
