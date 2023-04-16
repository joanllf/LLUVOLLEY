//Función que dibuja el fondo del marcador

void dibujaMarcador() {
  pushStyle();
  noStroke();
  fill(getColorAt(0), 220);
  rect(2 * marginH + pistaW, 2 * marginV + logoH, marcadorW, marcadorH);
  popStyle();
}

//Función que dibuja el marcador
void dibujaEqMarcador() {
  pushStyle();
  textAlign(CENTER);
  fill(getColorAt(5));
  textSize(48);
  text("LOCAL", 1110, 210);
  text("VISITANTE", 1580 + 150, 210);
  popStyle();
  pushStyle();
  textAlign(CENTER);
  fill(getColorAt(2));
  textSize(48);
  text("C", 1305, 203);
  text("C", 1305, 266);
  text("C", 1305, 329);
  text("C", 1305, 392);
  text("C", 1305, 455);
  text("C", 1305, 518);

  text("C", 1535, 203);
  text("C", 1535, 266);
  text("C", 1535, 329);
  text("C", 1535, 392);
  text("C", 1535, 455);
  text("C", 1535, 518);

  fill(getColorAt(5));
  text("T", 1375, 203);
  text("T", 1375, 266);

  text("T", 1465, 203);
  text("T", 1465, 266);
  popStyle();
}

//Función que dibuja las flachas
void dibujaFletchas() {
  pushMatrix();
  translate(2 * marginH + 2 * rotW + 135, marginV + pistaH + 55);
  rotate(-PI/4);
  displayIcon(13, -16, 40, 40);
  rotate(PI/2);
  displayIcon(48, -52, 40, 40);
  rotate(PI);
  displayIcon(-22, -52, 40, 40);
  rotate(-PI/2);
  displayIcon(12, -89, 40, 40);
  popMatrix();
}

//Función que dibuja el texto de la pantalla Log In
void dibujaTextoLogIn() {
  pushStyle();
  textFont(getFontAt(1));
  textSize(24);
  fill(0);
  text("Usuario:", width/2 - 190, height/2 + 10);
  text("Contraseña:", width/2 - 190, height/2 + 100);
  popStyle();
}

//Función que dibuja el texto de la pantalla Sing In
void dibujaTextoSingIn() {
  pushStyle();
  textFont(getFontAt(1));
  textSize(18);
  fill(0);
  text("Usuario:", width/2 - 190, height/2 + 5);
  text("Contraseña:", width/2 - 190, height/2 + 75);
  text("Repetir contraseña:", width/2 - 190, height/2 + 145);
  popStyle();
}

//Función que dibuja el texto de la pantalla Add Player
void dibujaTextoAddPlayer() {
  pushStyle();
  textFont(getFontAt(1));
  textSize(18);
  fill(0);
  text("Nombre:", width/2 - 190, height/2 + 5);
  text("Dorsal:", width/2 - 190, height/2 + 75);
  text("Posición:", width/2 - 190, height/2 + 145);
  text("Altura:", width/2 - 190, height/2 + 215);
  text("Edad:", width/2 - 190, height/2 + 285);
  popStyle();
}

//Función que dibuja el texto de la pantalla Change Pasword
void dibujaTextoChange() {
  pushStyle();
  textFont(getFontAt(1));
  textSize(18);
  fill(0);
  text("Usuario:", width/2 - 190, height/2 + 5);
  text("Contraseña:", width/2 - 190, height/2 + 75);
  text("Confirmar contraseña:", width/2 - 190, height/2 + 145);
  popStyle();
}

//Función que dibuja el texto de la pantalla Add Team
void dibujaTextoAddTeam() {
  pushStyle();
  textFont(getFontAt(1));
  textSize(18);
  fill(0);
  text("Usuario:", width/2 - 190, height/2 + 5);
  text("Contraseña:", width/2 - 190, height/2 + 75);
  text("Categoría:", width/2 - 190, height/2 + 145);
  popStyle();
}

//Función que dibuja las rotaciones predefinidas
void dibujaRotPre() {
  pushStyle();
  fill(255);
  rect(width/13, height/11, 3*width/13, 3*width/13);
  rect(5*width/13, height/11, 3*width/13, 3*width/13);
  rect(9*width/13, height/11, 3*width/13, 3*width/13);

  rect(width/13, 6*height/11, 3*width/13, 3*width/13);
  rect(5*width/13, 6*height/11, 3*width/13, 3*width/13);
  rect(9*width/13, 6*height/11, 3*width/13, 3*width/13);
  popStyle();
}
