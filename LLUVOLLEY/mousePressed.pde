void mousePressed() {

  //LOGIN
  if (p==PANTALLA.LOGIN) {
    usuario.isPressed();
    pasw.isPressed();

    if (creaC.mouseOverButton()) {
      p = PANTALLA.SINGIN;
    } else if (logIn.mouseOverButton()) {
      p = PANTALLA.SELECTTEAM;
    } else if (cambC.mouseOverButton()) {
      p = PANTALLA.CHANGEPASW;
    }

    //SINGIN
  } else if (p == PANTALLA.SINGIN) {
    userR.isPressed();
    paswR.isPressed();
    repPasw.isPressed();

    if (cont.mouseOverButton()) {

      String c = userR.getValue();
      String pw = paswR.getValue();
      String rpw = repPasw.getValue();
      
      if (pw.equals(rpw)) {
        insertUsuario(c, pw);
        
        userR.reset();
        paswR.reset();
        repPasw.reset();

        p = PANTALLA.LOGIN;
      } else {
        userR.reset();
        paswR.reset();
        repPasw.reset();
      }
      
    }

    //CHANGE
  } else if (p == PANTALLA.CHANGEPASW) {
    userCP.isPressed();
    newPSW.isPressed();
    confPSW.isPressed();

    if (confC.mouseOverButton()) {
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
      
      String cat = categ.getValue();
      
      insertCategoria(cat);
      
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
    } else if (add.mouseOverButton()) {
      p = PANTALLA.ADDJUGADOR;
    }

    //ADDJUGADOR
  } else if (p == PANTALLA.ADDJUGADOR) {
    nombre.isPressed();
    dorsal.isPressed();
    posicion.isPressed();
    altura.isPressed();
    edad.isPressed();

    if (contA.mouseOverButton() && contA.enabled) {
      String n = nombre.getValue();
      String a = altura.getValue();
      String d = dorsal.getValue();
      String e = edad.getValue();
      String po = posicion.getValue();

      insertJugador(n, a, d, e, po);
      t = new PagedTable(row, column);
      t.setHeaders(headers);
      t.setData(getInfoTaulaJugador());
      t.setColumnWidths(colWidths);

      nombre.reset();
      dorsal.reset();
      posicion.reset();
      altura.reset();
      edad.reset();
      p = PANTALLA.JUGADORES;
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
