class Paddle extends Rectangle {
  //class vars
  Boolean up, down, right;
  float speed, speedStart;
  float hStart;
  float bally;
  float buffer;
  //Boolean adv3 = false;

  Paddle(color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    hStart = h;
    speedStart = 9;
    speed = speedStart;
    this.up = false;
    this.down = false;
    this.buffer = (random(-200, 200));
  }

  //methods
  void draw() {
    rectangle();


    if (this.up == true) {
      movePaddleUp();
    }
    if (this.down == true) {
      movePaddleDown();
    }

    if (this.x < (tablew*1/2)) {
      this.right = true;
    } else {
      this.right = false;
    }
    //decrease();
  }

  void movePaddleUp() {
    y -= speed;
    if (y < tabley) { //error catch
      y = tabley;
    }
  }

  void movePaddleDown() {
    y += speed;
    if ((y + h) > (tabley + tableh)) {
      y = ((tabley + tableh) - h);
    }
  }

  void ballSnipe() {
    if (this.y < (bally + - this.h*1/2)) {
      this.y += speed;
    }
    if (this.y > (bally + - this.h*1/2)) {
      this.y -= speed;
    }
    if (this.y < tabley) { //error catch
      this.y = tabley;
    }
    if ((y + h) > (tabley + tableh)) {
      this.y = ((tabley + tableh) - h);
    }
  }

  void closeIsh() {
    if (this.y < (bally + - this.h*1/2 + this.buffer)) {
      this.y += speed;
    }
    if (this.y > (bally + - this.h*1/2 + this.buffer)) {
      this.y -= speed;
    }
    if (this.y < tabley) { //error catch
      this.y = tabley;
    }
    if ((y + h) > (tabley + tableh)) {
      this.y = ((tabley + tableh) - h);
    }
  }

  void newGame() {
    if (this.y < yStart) {
      this.y += speed;
    }
    if (this.y > yStart) {
      this.y -= speed;
    }
  }

  /*void decrease() {
   if (adv3 == true) {
   this.h *= 0.9;
   this.speed *= 0.75;
   adv3 = false;
   }
   }*/

  void ballUpdate(float ballyParameter) {
    bally =  ballyParameter;
  }

  void keyPressed() {
    if (this.right == true ) {
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
    if (this.right == true ) {
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
    this.speed = speedStart;
  }
}

//RESP:::
//GIVE X, Y, W, H to BALL
//
