// Classe Counter

class Counter {

  // Valor del comptador
  int value = 0;
  int minValue = 0, maxValue = 50;
  int stepValue = 1;

  // Propietats d'un counter:
  float x, y, w, h;  // Posició i dimensions

  // Colors de farciment i contorn
  color fillColor;

  // Mètode Constructor
  Counter(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  // Setters

  void setInitialValue(int n) {
    this.value = n;
  }

  void setValues(int minValue, int maxValue) {
    this.minValue = minValue;
    this.maxValue = maxValue;
  }

  // Dibuixa el botó
  void display() {

    fill(getColorAt(5));                            // Color
    rect(this.x, this.y, this.w, this.h);   // Rectangle del botó

    pushStyle();
    textMode(CENTER);
    fill(0);
    textSize(64);
    text(value, this.x + this.w/2 - 22, this.y + this.h/2 + 20);
    popStyle();


    // Icona del botó
    fill(getColorAt(7));
    rect(this.x, this.y + this.h + 15, 140, 50);
    fill(getColorAt(8));
    rect(this.x + this.w - 140, this.y + this.h + 15, 140, 50);
  }

  boolean mouseOverButtons() {
    return mouseOverButtonMes() || mouseOverButtonMenys();
  }

  // Indica si el cursor està sobre el botó Més
  boolean mouseOverButtonMes() {
    return mouseX >= this.x && mouseX <= this.x + 140 &&
      mouseY >= this.y + this.h + 15 && mouseY <= this.y + this.h + 15 + 50;
  }

  // Indica si el cursor està sobre el botó Menys
  boolean mouseOverButtonMenys() {
    return mouseX >= this.x + this.w - 140 && mouseX <= this.x + this.w &&
      mouseY >= this.y + this.h + 15 && mouseY <= this.y + this.h + 15 + 50;
  }

  void increment() {
    this.value += stepValue;
    if (this.value>this.maxValue) {
      this.value = this.maxValue;
    }
  }

  void decrement() {
    this.value -= stepValue;
    if (this.value<this.minValue) {
      this.value = this.minValue;
    }
  }

  void update() {
    if (mouseOverButtonMes()) {
      increment();
    } else if (mouseOverButtonMenys()) {
      decrement();
    }
  }
}
