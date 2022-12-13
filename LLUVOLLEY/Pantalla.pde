enum PANTALLA {LOGIN, SINGIN, SELECTTEAM, ADDTEAM, INICIO, JUGADORES, ROTACIONES, ESTGLOBALES, ESTPARTIDO};

void selectPantalla(PANTALLA p){
  if(p == PANTALLA.LOGIN){
    dibujaLogIn();
  }else if(p == PANTALLA.SINGIN){
    dibujaSingIn();
  }else if(p == PANTALLA.SELECTTEAM){
    dibujaSelectTeam();
  }else if(p == PANTALLA.ADDTEAM){
    dibujaAddTeam();
  }else if(p == PANTALLA.INICIO){
    dibujaInicio();
  }else if(p == PANTALLA.JUGADORES){
    
  }else if(p == PANTALLA.ROTACIONES){
    
  }else if(p == PANTALLA.ESTGLOBALES){
    
  }else if(p == PANTALLA.ESTPARTIDO){
    
  }
}
