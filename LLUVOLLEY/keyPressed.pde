void keyPressed() {
  eMar.keyPressed(key, (int)keyCode);
  player.keyPressed(key, (int)keyCode);
  usuario.keyPressed(key, (int)keyCode);
  pasw.keyPressed(key, (int)keyCode);

  // Botones de la pantalla de sing in
  userR.keyPressed(key, (int)keyCode);
  paswR.keyPressed(key, (int)keyCode);
  repPasw.keyPressed(key, (int)keyCode);
  club.keyPressed(key, (int)keyCode);
  email.keyPressed(key, (int)keyCode);
  
  // Botones de la pantalla change pasword
  userCP.keyPressed(key, (int)keyCode);
  newPSW.keyPressed(key, (int)keyCode);
  confPSW.keyPressed(key, (int)keyCode);  

  //Botones de la pantalla de add team
  userT.keyPressed(key, (int)keyCode);
  paswT.keyPressed(key, (int)keyCode);
  categ.keyPressed(key, (int)keyCode);
  
  //Botones de la pantalla addjugador
  nombre.keyPressed(key, (int)keyCode);
  dorsal.keyPressed(key, (int)keyCode);
  posicion.keyPressed(key, (int)keyCode);
  altura.keyPressed(key, (int)keyCode);
  edad.keyPressed(key, (int)keyCode);
  
  if (keyCode==LEFT) {
    t.prevPage();
  } else if (keyCode==RIGHT) {
    t.nextPage();
  }
}
