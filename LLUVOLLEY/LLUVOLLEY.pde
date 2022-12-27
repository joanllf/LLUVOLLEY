enum PANTALLA {
  LOGIN, SINGIN, SELECTTEAM, ADDTEAM, INICIO, JUGADORES, ROTACIONES, ESTGLOBALES, ESTPARTIDO
};

//PANTALLA p = PANTALLA.LOGIN;
PANTALLA p = PANTALLA.ROTACIONES;


void setup() {
  fullScreen();
  setMedias();
  setColors();
  setFonts();
  setButtonsInicio();
  setButtonsLogIn();
  setButtonsSingIn();
  setButtonsSelectTeam();
  setButtonsAddTeam();
  setButtonsJugadores();

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
  case ROTACIONES:
    dibujaRotPred();
    break;
  case ESTGLOBALES:
    ;
    break;
  case ESTPARTIDO:
    ;
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
