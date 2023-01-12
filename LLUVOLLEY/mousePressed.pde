void mousePressed() {
  //LOGIN
  if (p==PANTALLA.LOGIN) {
    // Botones de la pantalla log in
    user.isPressed();
    pasw.isPressed();

    if (creaC.mouseOverButton()) {
      p = PANTALLA.SINGIN;
    } else if (logIn.mouseOverButton()) {
      p = PANTALLA.SELECTTEAM;
    }

    //SINGIN
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

    //SELECTTEAM
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
    } else if (logo.mouseOverButton()) {
      p = PANTALLA.LOGIN;
    }

    //ADDTEAM
  } else if (p == PANTALLA.ADDTEAM) {
    // Botones de la pantalla de add team
    userT.isPressed();
    paswT.isPressed();
    categ.isPressed();

    if (conf.mouseOverButton()) {
      p = PANTALLA.SELECTTEAM;
    }

    //INICIO
  } else if (p == PANTALLA.INICIO) {
    eMar.isPressed();
    player.isPressed();
    if (jug.mouseOverButton()) {
      p = PANTALLA.JUGADORES;
    } else if (logo.mouseOverButton()) {
      p = PANTALLA.SELECTTEAM;
    } else if (rotPre.mouseOverButton()) {
      p = PANTALLA.ROTACIONES;
    } else if (est.mouseOverButton()) {
      p = PANTALLA.ESTINICIO;
    }

    //JUGADORES
  } else if (p == PANTALLA.JUGADORES) {
    if (prev.mouseOverButton() && prev.enabled) {
      t.prevPage();
    } else if (next.mouseOverButton() && next.enabled) {
      t.nextPage();
    } else if (logo.mouseOverButton()) {
      p = PANTALLA.INICIO;
    }

    //ROTACIONES
  } else if (p == PANTALLA.ROTACIONES) {
    if (logo.mouseOverButton()) {
      p = PANTALLA.INICIO;
    }
    
    //ESTINICIO
  } else if (p == PANTALLA.ESTINICIO) {
    if (logo.mouseOverButton()) {
      p = PANTALLA.INICIO;
    } else if (glob.mouseOverButton()) {
      p = PANTALLA.ESTGLOBALES;
    } else if (part.mouseOverButton()) {
      p = PANTALLA.ESTPARTIDO;
    }

    //ESTGLOBALES
  } else if (p == PANTALLA.ESTGLOBALES) {
    if (logo.mouseOverButton()) {
      p = PANTALLA.ESTINICIO;
    }

    //ESTPARTIDO
  } else if (p == PANTALLA.ESTPARTIDO) {
    if (logo.mouseOverButton()) {
      p = PANTALLA.ESTINICIO;
    }
    
  }
}
