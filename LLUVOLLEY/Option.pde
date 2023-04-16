// Clase Option

class Option {

  // Propiedades de un option:
  float x, y, w, h;  // Posición y dimensiones
  // Colores de contorno, relleno, activado y desactivado
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;
  String textBoto;  // Texto
  boolean enabled;  // Habilitado / deshabilitado

  //Constructor
  Option(String text, float x, float y, float w, float h) {
    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColor = color(255);
    fillColorOver = color(155, 155, 155);
    fillColorDisabled = color(150);
    strokeColor = color(0);
  }

  //Setters
  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibuja el botón
  void display() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);  // Color deshabilitado
    } else if (mouseOverButton()) {
      fill(fillColorOver);      // Color quando el cursor esta sobre
    } else {
      fill(fillColor);          // Color activo pero con el cusros fuera
    }
    noStroke();
    rect(this.x, this.y, this.w, this.h);    // Rectangulo del option

    // Texto (color, alineación y tamaño)
    fill(0);
    textAlign(CENTER);
    textSize(34);
    text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    popStyle();
  }

  // Indica si el cursor esta sobre el option
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
