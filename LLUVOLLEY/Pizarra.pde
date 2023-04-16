//Clase Pizarra

class Pizarra {

  // Propiedades de la Pizarra
  float x, y, w, h;

  // Colecciones de Pins
  Pin[] pins1;

  // Constructor
  Pizarra(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

    // Crear 6 pins (equipo de volley)
    pins1 = new Pin[6];
    for (int i=0; i<pins1.length; i++) {
      String txt = (i+1)+"";
      if (i<3) {
        pins1[i] = new Pin( marginH + 150 + 300*i, marginV + 300, 30, txt, color(getColorAt(1)));
      } else {
        pins1[i] = new Pin( marginH + 150 + 300*(i-3), marginV + 750, 30, txt, color(getColorAt(1)));
      }
    }
  }

  // Resetea la posición de tots els Pins
  void resetPinPositions() {
    for (int i=0; i<pins1.length; i++) {
      String txt = (i+1)+"";
      if (i<3) {
        pins1[i] = new Pin( marginH + 150 + 300*i, marginV + 300, 30, txt, color(getColorAt(1)));
      } else {
        pins1[i] = new Pin( marginH + 150 + 300*(i-3), marginV + 750, 30, txt, color(getColorAt(1)));
      }
    }
  }

  // Dibuja la Pizarra
  void display() {
    pushStyle();

    // Rectangulo
    stroke(0);
    strokeWeight(3);
    fill(getColorAt(3));
    rect(x, y, w, h);

    popStyle();

    pushStyle();

    strokeWeight(2);
    stroke(0);
    fill(getColorAt(3));
    rect(marginH, marginV, pistaW, pistaH);
    pushMatrix();
    translate(marginH, marginV);
    strokeWeight(3);
    stroke(0);
    line(0, 600, 900, 600);
    line(300, 0, 300, 900);
    line(600, 0, 600, 900);
    popMatrix();
    popStyle();

    pushStyle();
    textSize(48);
    fill(getColorAt(5), 200);
    text("1", 30, 70);
    text("6", 330, 70);
    text("5", 630, 70);
    text("2", 30, 670);
    text("3", 330, 670);
    text("4", 630, 670);
    popStyle();
  }

  // Dibuja els Pins
  void displayPins() {
    for (Pin p : pins1) {
      p.display();
    }
  }

  // Comprova si el cursor esta sobre la Pizarra
  boolean mouseOver() {
    return mouseX >= this.x && mouseX <= this.x + this.w &&
      mouseY >= this.y && mouseY <= this.y + this.h;
  }

  // Comprova si se ha de mover algun Pin
  void checkPinsMotion() {
    if (mouseOver()) {

      // Comprueba los pines del Equipo
      for (Pin p : pins1) {
        if (p.mouseOver()) {
          p.setPosition(mouseX, mouseY);
          break;
        }
      }
    }
  }
}
