void mousePressed(){
  eMar.isPressed();
  player.isPressed();
  user.isPressed();
  pasw.isPressed();
  
  // Botones de la pantalla de sing in
  userR.isPressed();
  paswR.isPressed();
  repPasw.isPressed();
  club.isPressed();
  email.isPressed();
  
  // Botones de la pantalla de add team
  userT.isPressed();
  paswT.isPressed();
  categ.isPressed();
  
  if(equipo.mouseOverSelect() && equipo.enabled){
    if(!equipo.collapsed){
      equipo.update();      // Actualitzar valor
    }
    equipo.toggle();        // Plegar o desplegar
  }
}
