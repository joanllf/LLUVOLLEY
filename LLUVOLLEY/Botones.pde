// Diferentes tipos de botones

// Botones de la pantalla inicial
Button sRot, rRot, dib, bor, jug, rotPre, est;
TextField eMar, player;

void setButtonsInicio(){
  // Botones bajo la pista
  sRot   = new Button("+ ROTACIÓN",               marginH,               2 * marginV + pistaH,                             rotW, rotH);
  rRot   = new Button("- ROTACIÓN",               marginH,               3 * marginV + pistaH + rotH,                      rotW, rotH);
  dib    = new Button("DIBUJAR",                  2 * marginH + rotW,    2 * marginV + pistaH,                             rotW, rotH);
  bor    = new Button("BORRAR",                   2 * marginH + rotW,    3 * marginV + pistaH + rotH,                      rotW, rotH);
  
  // Botones bajo el marcador
  jug    = new Button("JUGADORES",                2 * marginH + pistaW,  4 * marginV + logoH + marcadorH + 70,             menW, menH);
  rotPre = new Button("ROTACIONES PREDEFINIDAS",  2 * marginH + pistaW,  5 * marginV + logoH + marcadorH + 70 + menH,      menW, menH);
  est    = new Button("ESTADÍSTICAS",             2 * marginH + pistaW,  6 * marginV + logoH + marcadorH + 70 + 2 * menH,  menW, menH);
  
  jug.setColor(getColorAt(1));
  rotPre.setColor(getColorAt(1));
  est.setColor(getColorAt(1));
  
  jug.setColorOver(getColorAt(2));
  rotPre.setColorOver(getColorAt(2));
  est.setColorOver(getColorAt(2));
  
  // Campo de texto de entrada para el marcador
  eMar = new TextField(2 * marginH + pistaW + 130, 3 * marginV + logoH + marcadorH + 5, textFW, textFH);
  
  // Selector de jugador de la pista
  player = new TextField(2 * marginH + 2 * rotW + 135, marginV + pistaH + 55, 50, 50);  
}

void displayButtonsInicio(){
  setButtonsInicio();
  sRot.display();
  rRot.display();
  dib.display();
  bor.display();
  jug.display();
  rotPre.display();
  est.display();
  
  eMar.display();
  player.display();
}
