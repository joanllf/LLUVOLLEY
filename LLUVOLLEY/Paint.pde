boolean drawing;
boolean pizarraEnabled = false;
color pinzel;

void setPinzel() {
  pinzel = getColorAt(0);
}

void pintar() {
  noStroke();
  if (drawing) {
    fill(pinzel);
    circle(mouseX, mouseY, 10);
  }
}
