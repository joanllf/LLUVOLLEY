//Clase Checkbox

class CheckBox {
  // Propiedades
  int x, y, w;

  color colorFill = getColorAt(1);

  boolean checked;

  // Constructor
  CheckBox(int x, int y, int w) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.checked = false;
  }

  void setColorCheck(color c) {
    this.colorFill = c;
  }

  // Dibuja el CheckBox
  void display() {

    stroke(0);
    strokeWeight(1);

    fill(colorFill);
    rect(x, y, w, w);

    if (this.checked) {
      line(x, y, x + w, y + w);
      line(x, y+w, x + w, y);
    }
  }

  void setChecked(boolean b) {
    this.checked = b;
  }

  // Cambia el estado de seleción
  void toggle() {
    this.checked = ! this.checked;
  }

  // Mira si el cursor esta sobre el checkbox
  boolean onMouseOver() {
    return  mouseX>= this.x &&
      mouseX<= this.x + this.w &&
      mouseY>= this.y &&
      mouseY<= this.y + this.w;
  }
}
