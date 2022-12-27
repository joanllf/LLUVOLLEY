// Classe Botó

class Button {

  // Propietats d'un botó:
  float x, y, w, h;  // Posició i dimensions

  // Colors de contorn, farciment, actiu i desactiu
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;

  String textBoto;  // Text
  boolean enabled;  // Abilitat / desabilitat

  int textS;

  // Mètode Constructor
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

  // Dibuixa el botó
  void display() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);  // Color desabilitat
    } else if (mouseOverButton()) {
      fill(fillColorOver);      // Color quan ratolí a sobre
    } else {
      fill(fillColor);          // Color actiu però ratolí fora
    }
    stroke(strokeColor);
    strokeWeight(1);        //Color i gruixa del contorn
    rect(this.x, this.y, this.w, this.h);        // Rectangle del botó

    // Text (color, alineació i mida)
    fill(0);
    textAlign(CENTER);
    textSize(textS);
    text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    popStyle();
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
