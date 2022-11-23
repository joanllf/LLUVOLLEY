void dibujaPista(){
  pushStyle();
    strokeWeight(2);
    fill(getColorAt(3));
    rect(marginH, marginV, pistaW, pistaH);
    pushMatrix();
      translate(marginH, marginV);
      strokeWeight(3);
      line(0, 600, 900, 600);
      line(300, 0, 300, 900);
      line(600, 0, 600, 900);
    popMatrix();
  popStyle();
}

void dibujaMarcador(){
  pushStyle();
  fill(getColorAt(0), 220);
  rect(2 * marginH + pistaW, 2 * marginV + logoH, marcadorW, marcadorH);
  popStyle();
}

void dibujaFletchas(){
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

void dibujaTextoLogIn(){
  pushStyle();
    textFont(getFontAt(1));
    textSize(24);
    fill(0);
    text("Usuario:", width/2 - 190, height/2 + 10);
    text("Contraseña:", width/2 - 190, height/2 + 100);
  popStyle();
}

void dibujaTextoSingIn(){
  pushStyle();
    textFont(getFontAt(1));
    textSize(18);
    fill(0);
    text("Usuario:", width/2 - 190, height/2 + 5);
    text("Contraseña:", width/2 - 190, height/2 + 75);
    text("Repetir contraseña:", width/2 - 190, height/2 + 145);
    text("Correo electrònico:", width/2 - 190, height/2 + 215);
    text("Club:", width/2 - 190, height/2 + 285);
  popStyle();
}

void dibujaTextoAddTeam(){
  pushStyle();
    textFont(getFontAt(1));
    textSize(18);
    fill(0);
    text("Usuario:", width/2 - 190, height/2 + 5);
    text("Contraseña:", width/2 - 190, height/2 + 75);
    text("Categoría:", width/2 - 190, height/2 + 145);
  popStyle();
}
