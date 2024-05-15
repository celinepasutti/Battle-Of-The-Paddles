Boolean paused = true;
Boolean onePlayer = false;
Boolean twoPlayer = true;

color black=#000000, white=#FFFFFF, red=#951111, Lgreen=#27C149, gray=#898989;
ArrayList<Shape> shapes = new ArrayList<Shape>();

// ^^ SHAPES ELEMENT LIST ^^
/*
 0 = myTable,
 1 = rPaddle
 2 = lPaddle
 3 = myMenu
 4 = myBall
 5 = rScore
 6 = lScore
 7 = quit
 8 = restart
 */

void setup() {
  //size(400, 600);
  fullScreen();
  noStroke();
  println("initiated");
  display();
  music();

  if (correctlyOriented == true) {
    
    PongTable myTable = new PongTable(gray, appWidth*0, appHeight*1/10, appWidth, appHeight*8/10);

    Button quit = new Button("x", int(appWidth*1/45), red, appWidth*17/20, appHeight*1/30, appWidth/10, appHeight/24);
    Button restart = new Button("NEW GAME", int(appWidth*1/60), Lgreen, appWidth*1/20, appHeight*1/30, appWidth/10, appHeight/24);

    ScoreBoard rScore = new ScoreBoard(black, appWidth*6/20, appHeight*1/30, appWidth/10, appHeight/24);
    ScoreBoard lScore = new ScoreBoard(black, appWidth*12/20, appHeight*1/30, appWidth/10, appHeight/24);
    
    Menu myMenu = new Menu(black, 0, 0, appWidth, appHeight);

    Ball myBall = new Ball(white, myTable.w*1/2, (myTable.y + myTable.h*1/2), myTable.w*1/35, myTable.w*1/35);
    //yourBall = new Ball(white, myTable.w*1/2, (myTable.y + myTable.h*1/2), myTable.w*1/35, myTable.w*1/35);
    myBall.tableUpdate(myTable.x, myTable.y, myTable.w, myTable.h);

    Paddle rPaddle = new Paddle(white, myTable.w*1/30, (myTable.y + (myTable.h*1/3)), myBall.w*1/2, myTable.h*1/4);
    Paddle lPaddle = new Paddle(white, (myTable.w*29/30 - myBall.w*1/2), (myTable.y + (myTable.h*1/3)), myBall.w*1/2, myTable.h*1/4);


    //yourBall.tableUpdate(myTable.x, myTable.y, myTable.w, myTable.h);

    rPaddle.tableUpdate(myTable.x, myTable.y, myTable.w, myTable.h);
    lPaddle.tableUpdate(myTable.x, myTable.y, myTable.w, myTable.h);
    
    rScore.tableUpdate(myTable.x, myTable.y, myTable.w, myTable.h);
    lScore.tableUpdate(myTable.x, myTable.y, myTable.w, myTable.h);


    //Fireworks fireworks = new Fireworks(0, appWidth*-1, appHeight*-1, appHeight*1/30, appWidth*1/30, 0.5);

    shapes.add(myTable); //0
    shapes.add(rPaddle); //1
    shapes.add(lPaddle); //2
    shapes.add(myMenu); //3
    shapes.add(myBall); //4
    shapes.add(rScore); //5
    shapes.add(lScore); //6
    shapes.add(quit); //7
    shapes.add(restart); //8
  }
}

void draw() {
  background(black);
  if (correctlyOriented == false) {
    portrait();
  } else {
    /* for (int i = 0; i < shapes.size(); i++) { <---------- alternate
     shapes.get(i).draw();
     }*/

    for (Shape s : shapes) {
      s.draw();
    }
    
    //shapes.get(4).paddleUpdate(shapes.get(1).x, shapes.get(2).x, shapes.get(1).y, shapes.get(2).y, shapes.get(1).w, shapes.get(2).w, shapes.get(1).h, shapes.get(2).h);
  }
}

void mousePressed () {
  if (correctlyOriented == true) {
    if (mouseX >= shapes.get(8).x && mouseX <= (shapes.get(8).x + shapes.get(8).w) && mouseY >= shapes.get(8).y && mouseY <= (shapes.get(8).y + shapes.get(8).h)) {
      println("newly initiated");
      onePlayer = false;
      twoPlayer = false;
      
      for (Shape s : shapes) {
       s.reset(); 
      }
      
      paused = true;
    }
    
    if (paused == false && mouseX > shapes.get(0).x && mouseX < (shapes.get(0).x + shapes.get(0).w) && mouseY > shapes.get(0).y && mouseY < (shapes.get(0).y + shapes.get(0).h)) {
      println("ball moved");
      shapes.get(4).x = mouseX;
      shapes.get(4).y = mouseY;
    }

    if (mouseX >= shapes.get(7).x && mouseX <= (shapes.get(7).x + shapes.get(7).w) && mouseY >= shapes.get(7).y && mouseY <= (shapes.get(7).y + shapes.get(7).h)) {
      println("terminated");
      exit();
    }
    
    for (Shape s : shapes) {
     s.mousePressed(); 
    }
  }
}


void keyReleased() {
  if (correctlyOriented == true) {
    for (Shape s : shapes) {
      s.keyReleased();
    }
  }
}

void keyPressed() {
  if (key == ESC) {
    println("terminated");
  }

  if (correctlyOriented == true) {
    for (Shape s : shapes) {
      s.keyPressed();
    }
  }
}
