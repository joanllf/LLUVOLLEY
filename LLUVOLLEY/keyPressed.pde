void keyPressed(){
  eMar.keyPressed(key, (int)keyCode);
  player.keyPressed(key, (int)keyCode);
  user.keyPressed(key, (int)keyCode);
  pasw.keyPressed(key, (int)keyCode);
  
  // Botones de la pantalla de sing in
  userR.keyPressed(key, (int)keyCode);
  paswR.keyPressed(key, (int)keyCode);
  repPasw.keyPressed(key, (int)keyCode);
  club.keyPressed(key, (int)keyCode);
  email.keyPressed(key, (int)keyCode);
  
  //Botones de la pantalla de add team
  userT.keyPressed(key, (int)keyCode);
  paswT.keyPressed(key, (int)keyCode);
  categ.keyPressed(key, (int)keyCode);
}
