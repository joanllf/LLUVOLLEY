void mouseDragged() {
  pista.checkPinsMotion();

  if (drawing && pista.mouseOver()) {
    pintar();
  } 
}
