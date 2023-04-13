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

void dibujaSelectTeam() {
  pushStyle();
  noStroke();
  fill(getColorAt(6), 200);
  rect(width/2 - 350, height/2 - 130, 700, 300);
  popStyle();
  displayButtonsSelectTeam();
}

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

void dibujaInicio() {
  dibujaPista();
  dibujaMarcador();
  displayButtonsInicio();
  dibujaFletchas();
  dibujaEqMarcador();
}

void dibujaJugadores() {
  displayButtonsJugadores();
}

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


void dibujaRotPred() {
  displayButtonsRotaciones();
  dibujaRotPre();
}

void dibujaEstI() {
  displayButtonsEstI();
}
