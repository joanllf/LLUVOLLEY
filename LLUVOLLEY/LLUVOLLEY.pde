enum PANTALLA {LOGIN, SINGIN, SELECTTEAM, ADDTEAM, INICIO, JUGADORES, ROTACIONES, ESTGLOBALES, ESTPARTIDO};

void setup(){
  fullScreen();
  setMedias();
  setColors();
  setFonts();
  setButtonsInicio();
  setButtonsLogIn();
  setButtonsSingIn();
  setButtonsSelectTeam();
  setButtonsAddTeam();
  
  textFont(getFontAt(0));
}

void draw(){
  displayFondo(0, 0, width, height);
  
  //dibujaLogIn();
  //dibujaSingIn();
  //dibujaSelectTeam();
  //dibujaAddTeam();
  dibujaInicio();
}
