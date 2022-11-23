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
  sRot.display();
  rRot.display();
  dib.display();
  bor.display();
  jug.display();
  rotPre.display();
  est.display();
  jug.setTextSize(24);
  rotPre.setTextSize(24);
  est.setTextSize(24);
  eMar.display();
  player.display();
}

// Botones de la pantalla de Lon In
TextField user, pasw;
Button creaC, cambC, logIn;

void setButtonsLogIn(){
  user = new TextField(width/2 - 190, height/2 + 20, 380, 40);
  pasw = new TextField(width/2 - 190, height/2 + 110, 380, 40);
  
  creaC = new Button("Crear cuenta", width/2 - 190, height/2 + 180, 185, 40);
  cambC = new Button("Cambiar contraseña", width/2 + 5, height/2 + 180, 185, 40);
  logIn = new Button("Log In", width/2 -100, height/2 + 235, 200, 50);
}

void displayButtonsLogIn(){
  user.display();
  pasw.display();
  creaC.setTextSize(14);
  cambC.setTextSize(14);
  creaC.display();
  cambC.display();
  logIn.display();
}

//Botones de la pantalla de Register
TextField userR, paswR, repPasw, club, email;
Button cont;

void setButtonsSingIn(){
  userR = new TextField(width/2 - 190, height/2 + 10, 380, 30);
  paswR = new TextField(width/2 - 190, height/2 + 80, 380, 30);
  repPasw = new TextField(width/2 - 190, height/2 + 150, 380, 30);
  club = new TextField(width/2 - 190, height/2 + 220, 380, 30);
  email = new TextField(width/2 - 190, height/2 + 290, 380, 30);
  
  cont = new Button("Continuar", width/2 -100, height/2 + 335, 200, 50);
}

void displayButtonsSingIn(){
  userR.display();
  paswR.display();
  repPasw.display();
  club.display();
  email.display();
  cont.display();
}

// Botones de la pantalla de select team
Select equipo;
String[] selectTeam = {"Alevin", "Infantil", "Cadete"};

Button addTeam;

void setButtonsSelectTeam(){
  equipo = new Select(selectTeam, width/2 - 300, height/2, 600, 80);
  addTeam = new Button("Añadir equipo", width/2 + 100, height/2 + 100, 200, 50);
}

void displayButtonsSelectTeam(){
  
  addTeam.setColor(getColorAt(1));
  addTeam.setColorOver(getColorAt(2));
  addTeam.display();
  equipo.display();
}
