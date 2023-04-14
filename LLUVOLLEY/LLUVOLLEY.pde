enum PANTALLA {
  LOGIN, SINGIN, CHANGEPASW, SELECTTEAM, ADDTEAM, INICIO, JUGADORES, ADDJUGADOR, ROTACIONES, ESTINICIO, ESTGLOBALES, ESTPARTIDO
};

//PANTALLA p = PANTALLA.LOGIN;
//PANTALLA p = PANTALLA.ESTINICIO;
//PANTALLA p = PANTALLA.JUGADORES;
PANTALLA p = PANTALLA.INICIO;


void setup() {
  fullScreen();
  conexionBBDD();
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
  switch(p) {
  case LOGIN:
    displayFondo(0, 0, width, height);
    dibujaLogIn();
    break;
  case SINGIN:
    displayFondo(0, 0, width, height);
    dibujaSingIn();
    break;
  case CHANGEPASW:
    displayFondo(0, 0, width, height);
    dibujaChange();
    break;
  case SELECTTEAM:
    displayFondo(0, 0, width, height);
    dibujaSelectTeam();
    break;
  case ADDTEAM:
    displayFondo(0, 0, width, height);
    dibujaAddTeam();
    break;
  case INICIO:
    displayFondo(0, 0, width, height);
    dibujaInicio();
    mousePressed();
    pintar();
    break;
  case JUGADORES:
    displayFondo(0, 0, width, height);
    dibujaJugadores();
    break;
  case ADDJUGADOR:
    dibujaAddPlayer();
    break;
  case ROTACIONES:
    displayFondo(0, 0, width, height);
    dibujaRotPred();
    break;
  case ESTINICIO:
    displayFondo(0, 0, width, height);
    dibujaEstI();
    break;
  case ESTGLOBALES:
    displayFondo(0, 0, width, height);
    displayButtonsEstG();
    break;
  case ESTPARTIDO:
    displayFondo(0, 0, width, height);
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
