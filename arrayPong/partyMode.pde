Boolean partyMode = false;
int current, objective;


void partyMode() {
  current = second();
  if (partyMode == true) {

    if (current == objective) {
      for (Shape s : shapes) {
        objective = 0;
        s.col = color (random(255), random(255), random(255));
        partyON();
      }
    }
  }
}

void partyON() {
  objective = current + 1;
}
