boolean drawing;
boolean pizarraEnabled = false;
color pinzel;

void setPinzel(){
  pinzel = getColorAt(0);
}

void pintar(){
  //noStroke();
  if(drawing == true){
    fill(pinzel);
    circle(mouseX, mouseY, 10);
  }
}


void borrarTodo(){
  if (bor.mouseOverButton()){
    pista.display();
  }
}

void dibujaPizarra() {
  if (pizarraEnabled){
    dibujaInicio();
    pintar();
  } else {
    
    pista.display();
    dibujaInicio();
  }
}
