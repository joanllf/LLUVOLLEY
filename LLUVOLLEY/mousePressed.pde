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

      String pw = newPSW.getValue();
      String cPw = confPSW.getValue();
      String us = userCP.getValue();

      if (pw.equals(cPw)) {
        updatePasword(pw, us);

        newPSW.reset();
        confPSW.reset();
        userCP.reset();

        p = PANTALLA.LOGIN;
      } else {
        newPSW.reset();
        confPSW.reset();
      }
    }

    //SELECTTEAM
  } else if (p == PANTALLA.SELECTTEAM) {

    equipo.mouseOn();

    if (addTeam.mouseOverButton()) {
      p = PANTALLA.ADDTEAM;
    } else if (confST.mouseOverButton() && confST.enabled) {
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

      if (cat.equals("")) {
        categ.reset();
      } else {
        insertCategoria(cat);
      }

      p = PANTALLA.SELECTTEAM;
    }

    //INICIO
  } else if (p == PANTALLA.INICIO) {
    eMar.isPressed();
    player.isPressed();
    
    if (mousePressed == true){
      drawing = true;
    } else if (mousePressed == false){
      drawing = false;
    }

    if ((local.getValue() >= 25 && local.getValue() >= visitante.getValue() + 2)
      || (visitante.getValue() >= 25 && visitante.getValue() >= local.getValue() + 2)) {
      local.resetCounter();
      visitante.resetCounter();
    } else {
      local.update();
      visitante.update();
    }

    if (cl1.onMouseOver()) {
      cl1.toggle();
    } else if (cl2.onMouseOver()) {
      cl2.toggle();
    } else if (cl3.onMouseOver()) {
      cl3.toggle();
    } else if (cl4.onMouseOver()) {
      cl4.toggle();
    } else if (cl5.onMouseOver()) {
      cl5.toggle();
    } else if (cl6.onMouseOver()) {
      cl6.toggle();
    } else if (cv1.onMouseOver()) {
      cv1.toggle();
    } else if (cv2.onMouseOver()) {
      cv2.toggle();
    } else if (cv3.onMouseOver()) {
      cv3.toggle();
    } else if (cv4.onMouseOver()) {
      cv4.toggle();
    } else if (cv5.onMouseOver()) {
      cv5.toggle();
    } else if (cv6.onMouseOver()) {
      cv6.toggle();
    } else if (tl1.onMouseOver()) {
      tl1.toggle();
    } else if (tl2.onMouseOver()) {
      tl2.toggle();
    } else if (tv1.onMouseOver()) {
      tv1.toggle();
    } else if (tv2.onMouseOver()) {
      tv2.toggle();
    }
      
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
