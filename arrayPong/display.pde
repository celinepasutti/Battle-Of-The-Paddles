float appWidth, appHeight;
Boolean correctlyOriented;

void display() {
  appWidth = width;
  appHeight = height;
  correctlyOriented = (appWidth >= appHeight) ? true : false;
  println("orientation :", appWidth, "by", appHeight, " -- correctly oriented :", correctlyOriented);
  println("game is permitted to start :");
}

void portrait() {
  fill(red);
  rect (0, 0, width, height);
  fill(0);
  println("orientation :", width, "by", height, " -- correctly oriented :", correctlyOriented);
  println("game is stopped :");
}
