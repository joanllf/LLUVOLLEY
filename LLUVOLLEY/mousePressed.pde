void mousePressed(){
  eMar.isPressed();
  player.isPressed();
  user.isPressed();
  pasw.isPressed();
  
  if(equipo.mouseOverSelect() && equipo.enabled){
    if(!equipo.collapsed){
      equipo.update();      // Actualitzar valor
    }
    equipo.toggle();        // Plegar o desplegar
  }
}
