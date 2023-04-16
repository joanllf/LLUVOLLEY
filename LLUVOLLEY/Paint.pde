//Pestaña con la inforamción para poder pintar la pista de la pantalla Inicio

boolean drawing;
boolean pizarraEnabled = false;
color pinzel;

//Color del pinzel
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
