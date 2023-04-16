//Función que dibuja la pantalla Log In

void dibujaLogIn() {
  pushStyle();
  noStroke();
  fill(getColorAt(6), 200);
  rect(width/2 - 200, height/2 - 300, 400, 600);
  popStyle();
  displayLogo(width/2 - 100, height/2 - 250, 200, 200);
  displayButtonsLogIn();
  dibujaTextoLogIn();
}

//Función que dibuja la pantalla Sing In
void dibujaSingIn() {
  pushStyle();
  noStroke();
  fill(getColorAt(6), 200);
  rect(width/2 - 200, height/2 - 300, 400, 600);
  popStyle();
  displayLogo(width/2 - 100, height/2 - 250, 200, 200);
  displayButtonsSingIn();
  dibujaTextoSingIn();
}

//Función que dibuja la pantalla Select Team
void dibujaSelectTeam() {
  pushStyle();
  noStroke();
  fill(getColorAt(6), 200);
  rect(width/2 - 350, height/2 - 130, 700, 300);
  popStyle();
  displayButtonsSelectTeam();
}

//Función que dibuja la pantalla Add Team
void dibujaAddTeam() {
  pushStyle();
  noStroke();
  fill(getColorAt(6), 200);
  rect(width/2 - 200, height/2 - 300, 400, 600);
  popStyle();
  displayLogo(width/2 - 100, height/2 - 250, 200, 200);
  displayButtonsAddTeam();
  dibujaTextoAddTeam();
}

//Función que dibuja la pantalla Change Pasword
void dibujaChange() {
  pushStyle();
  noStroke();
  fill(getColorAt(6), 200);
  rect(width/2 - 200, height/2 - 300, 400, 600);
  popStyle();
  displayLogo(width/2 - 100, height/2 - 250, 200, 200);
  displayButtonsChange();
  dibujaTextoChange();
}

//Función que dibuja la pantalla Inicio
void dibujaInicio() {
  dibujaMarcador();
  displayButtonsInicio();
  dibujaFletchas();
  dibujaEqMarcador();
}

//Función que dibuja la pantalla Jugadores
void dibujaJugadores() {
  displayButtonsJugadores();
}

//Función que dibuja la pantalla Add Player
void dibujaAddPlayer() {
  pushStyle();
  noStroke();
  fill(getColorAt(6));
  rect(width/2 - 200, height/2 - 300, 400, 700);
  popStyle();
  displayLogo(width/2 - 100, height/2 - 250, 200, 200);
  displayButtonsAddPlayer();
  dibujaTextoAddPlayer();
}

//Función que dibuja la pantalla Rotaciones Predefinidas
void dibujaRotPred() {
  displayButtonsRotaciones();
  dibujaRotPre();
}

//Función que dibuja la pantalla Estadísticas
void dibujaEstI() {
  displayButtonsEstI();
}
