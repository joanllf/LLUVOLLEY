void dibujaLogIn(){
  pushStyle();
    noStroke();
    fill(getColorAt(6), 200);
    rect(width/2 - 200, height/2 - 300, 400, 600);
  popStyle();
  displayLogo(width/2 - 100, height/2 - 250, 200, 200);
  displayButtonsLogIn();
  dibujaTextoLogIn();
}

void dibujaSingIn(){
  pushStyle();
    noStroke();
    fill(getColorAt(6), 200);
    rect(width/2 - 200, height/2 - 300, 400, 700);
  popStyle();
  displayLogo(width/2 - 100, height/2 - 250, 200, 200);
  displayButtonsSingIn();
  dibujaTextoSingIn();
}

void dibujaSelectTeam(){
  pushStyle();
    noStroke();
    fill(getColorAt(6), 200);
    rect(width/2 - 350, height/2 - 130, 700, 300);
  popStyle();
  displayLogo(width - logoH - marginH, marginV, logoW, logoH);
  displayButtonsSelectTeam();
}

void dibujaAddTeam(){
  pushStyle();
    noStroke();
    fill(getColorAt(6), 200);
    rect(width/2 - 200, height/2 - 300, 400, 600);
  popStyle();
  displayLogo(width/2 - 100, height/2 - 250, 200, 200);
  displayButtonsAddTeam();
  dibujaTextoAddTeam();
}

void dibujaInicio(){
  //displayLogo(width - logoH - marginH, marginV, logoW, logoH);
  dibujaPista();
  dibujaMarcador();
  displayButtonsInicio();
  dibujaFletchas();
}

void dibujaJugadores(){
  //displayLogo(width - logoH - marginH, marginV, logoW, logoH);
  displayButtonsJugadores();
}
