void dibujaInicio(){
  displayLogo(width - logoH - marginH, marginV, logoW, logoH);
  dibujaPista();
  dibujaMarcador();
  displayButtonsInicio();
  dibujaFletchas();
}

void dibujaLogIn(){
  pushStyle();
  noStroke();
  fill(getColorAt(6), 200);
  rect(width/2 - 200, height/2 - 300, 400, 600);
  popStyle();
  displayLogo(width/2 - 100, height/2 - 250, 200, 200);
  displayButtonsLogIn();
}
