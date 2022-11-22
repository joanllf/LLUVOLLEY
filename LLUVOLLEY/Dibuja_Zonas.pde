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
  rect(2 * marginH + pistaW, 2 * marginV + logoH, marcadorW, marcadorH);
  fill(getColorAt(0), 230);
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
