enum PANTALLA {
  LOGIN, SINGIN, CHANGEPASW, SELECTTEAM, ADDTEAM, INICIO, JUGADORES, ADDJUGADOR, ROTACIONES, ESTINICIO, ESTGLOBALES, ESTPARTIDO
};

//PANTALLA p = PANTALLA.LOGIN;
PANTALLA p = PANTALLA.JUGADORES;

void setup() {
  fullScreen();
  setMedias();
  setColors();
  setFonts();
  setButtonsInicio();
  setButtonsLogIn();
  setButtonsSingIn();
  setButtonsChange();
  setButtonsSelectTeam();
  setButtonsAddTeam();
  setButtonsJugadores();
  setButtonsAddPlayer();
  setButtonsEstI();

  textFont(getFontAt(0));
}

void draw() {
  displayFondo(0, 0, width, height);

  switch(p) {
  case LOGIN:
    dibujaLogIn();
    break;
  case SINGIN:
    dibujaSingIn();
    break;
  case CHANGEPASW:
    dibujaChange();
    break;
  case SELECTTEAM:
    dibujaSelectTeam();
    break;
  case ADDTEAM:
    dibujaAddTeam();
    break;
  case INICIO:
    dibujaInicio();
    break;
  case JUGADORES:
    dibujaJugadores();
    break;
  case ADDJUGADOR:
    dibujaAddPlayer();
    break;
    //jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj
  case ROTACIONES:
    dibujaRotPred();
    break;
  case ESTINICIO:
    dibujaEstI();
  case ESTGLOBALES:
    displayButtonsEstG();
    break;
  case ESTPARTIDO:
    displayButtonsEstP();
    break;
  }
}

void updateCursor() {
  if ((prev.mouseOverButton() && prev.enabled)||
    (next.mouseOverButton() && next.enabled)) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
