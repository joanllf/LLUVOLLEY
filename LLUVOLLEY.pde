void setup(){
  fullScreen();
  setMedias();
  setColors();
}

void draw(){
  displayFondo(0, 0, width, height);
  displayLogo(width - logoH - marginH, marginV, logoW, logoH);
  
  dibujaInicio();
}

void mousePressed(){
  eMar.isPressed();
  player.isPressed();
}

void keyPressed(){
  eMar.keyPressed(key, (int)keyCode);
  player.keyPressed(key, (int)keyCode);
}
