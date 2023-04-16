//Pestaña que escucha si arrastramos el cursor

void mouseDragged() {
  pista.checkPinsMotion();

  if (drawing && pista.mouseOver()) {
    pintar();
  }
}
