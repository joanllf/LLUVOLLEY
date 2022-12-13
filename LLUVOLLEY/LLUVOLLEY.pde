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
  
  
  dibujaInicio();
  //selectPantalla();
}
