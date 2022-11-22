enum PANTALLA {};

void setup(){
  fullScreen();
  setMedias();
  setColors();
  setButtonsInicio();
}

void draw(){
  displayFondo(0, 0, width, height);
  displayLogo(width - logoH - marginH, marginV, logoW, logoH);
  
  dibujaInicio();
}
