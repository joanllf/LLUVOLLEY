enum PANTALLA {LOGIN, REGISTER, SELECTTEAM, ADDTEAM, INICIO, JUGADORES, ROTACIONES, ESTGLOBALES, ESTPARTIDO};

void setup(){
  fullScreen();
  setMedias();
  setColors();
  setFonts();
  setButtonsInicio();
  setButtonsLogIn();
  
  textFont(getFontAt(0));
}

void draw(){
  displayFondo(0, 0, width, height);
  
  //dibujaInicio();
  //dibujaLogIn();
}
