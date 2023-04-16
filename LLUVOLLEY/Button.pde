// Clase Botón

class Button {

  // Propiedades de un botón:
  float x, y, w, h;  // Posición y dimensiones

  // Colores de contorno, relleno, activado y desactivado
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;

  String textBoto;  // Texto
  boolean enabled;  // Habilitado / deshabilitado

  int textS;

  // Método Constructor
  Button(String text, float x, float y, float w, float h) {
    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    this.textS = 20;
    fillColor = getColorAt(4);
    fillColorOver = getColorAt(5);
    fillColorDisabled = getColorAt(6);
    strokeColor = color(0);
  }

  // Setters
  void setEnabled(boolean b) {
    this.enabled = b;
  }

  void setColor(color c) {
    this.fillColor = c;
  }

  void setColorOver(color c) {
    this.fillColorOver = c;
  }

  void setTextSize(int t) {
    this.textS = t;
  }

  void setText(String s) {
    this.textBoto = s;
  }

  // Dibuija el botón
  void display() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);  // Color deshabilitado
    } else if (mouseOverButton()) {
      fill(fillColorOver);      // Color quando el cursor esta encima
    } else {
      fill(fillColor);          // Color activo pero con el cursor fuera
    }
    stroke(strokeColor);
    strokeWeight(1);        //Color y ancho del contorno
    rect(this.x, this.y, this.w, this.h);        // Rectangulo del botón

    // Texto (color, alineación y tamaño)
    fill(0);
    textAlign(CENTER);
    textSize(textS);
    text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    popStyle();
  }

  // Indica si el cursor esta encima del botón
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
