// Classe Botó

class ImageButton {

  // Propietats d'un botó:
  float x, y, w, h;  // Posició i dimensions

  PImage img;  // Imatges del botó

  boolean enabled;   // Abilitat / desabilitat

  // Mètode Constructor
  ImageButton(PImage imgs, float x, float y, float w, float h) {
    this.img = imgs;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibuixa el botó
  void display() {
    imageMode(CORNER);
    image(img, this.x, this.y, this.w, this.h);
  }

  // Indica si el cursor està sobre el botó
  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
