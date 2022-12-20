enum PANTALLA {LOGIN, SINGIN, SELECTTEAM, ADDTEAM, INICIO, JUGADORES, ROTACIONES, ESTGLOBALES, ESTPARTIDO};

PANTALLA p = PANTALLA.LOGIN;

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

  switch(p){
    case LOGIN: dibujaLogIn(); break;
    case SINGIN: dibujaSingIn(); break;
    case SELECTTEAM: dibujaSelectTeam(); break;
    case ADDTEAM: dibujaAddTeam(); break;
    case INICIO: dibujaInicio(); break;
    case JUGADORES:; break;
    case ROTACIONES:; break;
    case ESTGLOBALES:; break;
    case ESTPARTIDO:; break;
  }
}
