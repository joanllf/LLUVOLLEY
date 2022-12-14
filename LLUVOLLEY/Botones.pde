// Diferentes tipos de botones

// Botones de la pantalla inicial
Button sRot, rRot, dib, bor, jug, rotPre, est;
TextField eMar, player;
ImageButton logo;

void setButtonsInicio() {
  // Botones bajo la pista
  sRot   = new Button("+ ROTACIÓN", marginH, 2 * marginV + pistaH, rotW, rotH);
  rRot   = new Button("- ROTACIÓN", marginH, 3 * marginV + pistaH + rotH, rotW, rotH);
  dib    = new Button("DIBUJAR", 2 * marginH + rotW, 2 * marginV + pistaH, rotW, rotH);
  bor    = new Button("BORRAR", 2 * marginH + rotW, 3 * marginV + pistaH + rotH, rotW, rotH);

  // Botones bajo el marcador
  jug    = new Button("JUGADORES", 2 * marginH + pistaW, 4 * marginV + logoH + marcadorH + 70, menW, menH);
  rotPre = new Button("ROTACIONES PREDEFINIDAS", 2 * marginH + pistaW, 5 * marginV + logoH + marcadorH + 70 + menH, menW, menH);
  est    = new Button("ESTADÍSTICAS", 2 * marginH + pistaW, 6 * marginV + logoH + marcadorH + 70 + 2 * menH, menW, menH);

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
  logo = new ImageButton(getImgAt(0), width - logoH - marginH, marginV, logoW, logoH);
}

void displayButtonsInicio() {
  eMar.changeY(40);
  player.changeY(35);
  player.changeX(15);

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
  pushStyle();
  textFont(getFontAt(6));
  eMar.changeY(41);
  player.changeY(37);
  eMar.setTextSize(30);
  player.setTextSize(30);
  eMar.display();
  player.display();
  popStyle();
  logo.display();
}

// Botones de la pantalla de Lon In
TextField user, pasw;
Button creaC, cambC, logIn;

void setButtonsLogIn() {
  user = new TextField(width/2 - 190, height/2 + 20, 380, 40);
  pasw = new TextField(width/2 - 190, height/2 + 110, 380, 40);

  creaC = new Button("Crear cuenta", width/2 - 190, height/2 + 180, 185, 40);
  cambC = new Button("Cambiar contraseña", width/2 + 5, height/2 + 180, 185, 40);
  logIn = new Button("Log In", width/2 -100, height/2 + 235, 200, 50);
}

void displayButtonsLogIn() {
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

void setButtonsSingIn() {
  userR = new TextField(width/2 - 190, height/2 + 10, 380, 30);
  paswR = new TextField(width/2 - 190, height/2 + 80, 380, 30);
  repPasw = new TextField(width/2 - 190, height/2 + 150, 380, 30);
  club = new TextField(width/2 - 190, height/2 + 220, 380, 30);
  email = new TextField(width/2 - 190, height/2 + 290, 380, 30);

  cont = new Button("Continuar", width/2 -100, height/2 + 335, 200, 50);
}

void displayButtonsSingIn() {
  userR.changeY(23);
  paswR.changeY(23);
  repPasw.changeY(23);
  club.changeY(23);
  email.changeY(23);

  userR.display();
  paswR.display();
  repPasw.display();
  club.display();
  email.display();
  cont.display();
}

// Botones de la pantalla de select team
Select equipo;
String[] selectTeam = {"Alevin", "Infantil", "Cadete", "Juvenil"};

Button addTeam, confST;

void setButtonsSelectTeam() {
  equipo = new Select(selectTeam, width/2 - 300, height/2 - 25, 600, 80);
  addTeam = new Button("Añadir equipo", width/2 - 300, height/2 + 70, 200, 70);
  confST = new Button("Confirmar", width/2 + 100, height/2 + 70, 200, 70);
}

void displayButtonsSelectTeam() {
  addTeam.setColor(getColorAt(4));
  addTeam.setColorOver(getColorAt(5));
  addTeam.display();
  confST.display();
  equipo.display();
  logo.display();
}

// Botones de la pantalla de add team
TextField userT, paswT, categ;
Button conf;

void setButtonsAddTeam() {
  userT = new TextField(width/2 - 190, height/2 + 10, 380, 30);
  paswT = new TextField(width/2 - 190, height/2 + 80, 380, 30);
  categ = new TextField(width/2 - 190, height/2 + 150, 380, 30);
  conf = new Button("Confirmar", width/2 + 10, height/2 + 210, 180, 50);
}

void displayButtonsAddTeam() {
  userT.changeY(23);
  paswT.changeY(23);
  categ.changeY(23);

  userT.display();
  paswT.display();
  categ.display();
  conf.display();
}

//Botones de la pantalla jugadores
Button prev, next;
PagedTable t;
int row = 8, column = 6;
String[] headers = {"Nombre", "Dorsal", "Posición", "Altura", "Edad", "Estadísticas"};
float [] colWidths = {15, 8, 12, 10, 10, 45};
String[][] jugadores = {
  {"Caetano Filter", "7", "Punta", "1,87", "27", "Rece:   Def:"},
  {"Thiago Vanole", "1", "Punta", "1,84", "25", "Rece:   Def:"},
  {"Pedro Jukoski", "3", "Colocador", "1,96", "22", "Rece:   Def:"},
  {"Víctor Mendez", "13", "Central", "2,03", "19", "Rece:   Def:"},
  {"Víctor Mendez", "13", "Central", "2,03", "19", "Rece:   Def:"},
  {"Víctor Mendez", "13", "Central", "2,03", "19", "Rece:   Def:"},
  {"Víctor Mendez", "13", "Central", "2,03", "19", "Rece:   Def:"},
  {"Víctor Mendez", "13", "Central", "2,03", "19", "Rece:   Def:"},
  {"Víctor Mendez", "13", "Central", "2,03", "19", "Rece:   Def:"},
  {"Víctor Mendez", "13", "Central", "2,03", "19", "Rece:   Def:"},
};

void setButtonsJugadores() {
  t = new PagedTable(row, column);
  t.setHeaders(headers);
  t.setData(jugadores);
  t.setColumnWidths(colWidths);

  prev = new Button("PREV", width/2 - 110, 980, 100, 50);
  next = new Button("NEXT", width/2 + 10, 980, 100, 50);
}

void displayButtonsJugadores() {
  t.display(20, 140, 1880, 800);
  next.display();
  prev.display();
  updateCursor();
  logo.display();
}

void displayButtonsRotaciones() {
  logo.display();
}

Button glob, part;

void setButtonsEstI() {
  glob = new Button("Estadíscas \n" + "globales", width/5, height/5, width/5, 3*height/5);
  part = new Button("Estadíscas \n" + "último partido", 3*width/5, height/5, width/5, 3*height/5);
}

void displayButtonsEstI() {
  glob.setTextSize(32);
  part.setTextSize(32);
  glob.display();
  part.display();
  logo.display();
}

void displayButtonsEstG() {
  logo.display();
}

void displayButtonsEstP() {
  logo.display();
}
