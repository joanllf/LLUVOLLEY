void mousePressed() {
  if (p==PANTALLA.LOGIN) {
    // Botones de la pantalla log in
    eMar.isPressed();
    player.isPressed();
    user.isPressed();
    pasw.isPressed();

    if (creaC.mouseOverButton()) {
      p = PANTALLA.SINGIN;
    } else if (logIn.mouseOverButton()) {
      p = PANTALLA.SELECTTEAM;
    }
  } else if (p == PANTALLA.SINGIN) {
    // Botones de la pantalla de sing in
    userR.isPressed();
    paswR.isPressed();
    repPasw.isPressed();
    club.isPressed();
    email.isPressed();

    if (cont.mouseOverButton()) {
      p = PANTALLA.LOGIN;
    }
  } else if (p == PANTALLA.SELECTTEAM) {

    if (equipo.mouseOverSelect() && equipo.enabled) {
      if (!equipo.collapsed) {
        equipo.update();      // Actualitzar valor
      }
      equipo.toggle();        // Plegar o desplegar
    } else if (addTeam.mouseOverButton()) {
      p = PANTALLA.ADDTEAM;
    } else if (confST.mouseOverButton()) {
      p = PANTALLA.INICIO;
    }
  } else if (p == PANTALLA.ADDTEAM) {
    // Botones de la pantalla de add team
    userT.isPressed();
    paswT.isPressed();
    categ.isPressed();

    if (conf.mouseOverButton()) {
      p = PANTALLA.SELECTTEAM;
    }
  } else if (p == PANTALLA.INICIO) {
  } else if (p == PANTALLA.JUGADORES) {
  } else if (p == PANTALLA.ROTACIONES) {
  } else if (p == PANTALLA.ESTGLOBALES) {
  } else if (p == PANTALLA.ESTPARTIDO) {
  }



  /*
  if(logIn.mouseOverButton()){
   p = PANTALLA.SELECTTEAM;
   } else if(addTeam.mouseOverButton()){
   p = PANTALLA.ADDTEAM;
   } else if(conf.mouseOverButton()){
   p = PANTALLA.SELECTTEAM;
   } else if(creaC.mouseOverButton()){
   p = PANTALLA.SINGIN;
   } else if(cont.mouseOverButton()){
   p = PANTALLA.LOGIN;
   } else if(confST.mouseOverButton()){
   p = PANTALLA.INICIO;
   }
   */
}
