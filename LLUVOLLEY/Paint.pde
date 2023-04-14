boolean drawing;
color pinzel = getColorAt(1);

void pintar(){
  noStroke();
  if(drawing == true){
    fill(pinzel);
    circle(mouseX, mouseY, 10);
  }
}

void borrarTodo(){
  if (bor.mouseOverButton()){
    dibujaPista();
  }
}
