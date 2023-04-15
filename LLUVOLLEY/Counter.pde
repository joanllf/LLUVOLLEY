// Classe Counter

class Counter {

  // Valor del comptador
  int value = 0;
  int minValue = 0, maxValue = 150;
  int stepValue = 1;

  // Propietats d'un counter:
  float x, y, w, h;  // Posició i dimensions

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

  int getValue() {
    return this.value;
  }

  void resetCounter() {
    this.value = 0;
  }

  // Dibuixa el botó
  void display() {

    strokeWeight(1);
    fill(getColorAt(3));                            // Color
    rect(this.x, this.y, this.w, this.h);   // Rectangle del botó

    pushStyle();
    textAlign(CENTER);
    fill(0);
    textSize(150);
    text(value, this.x + this.w/2, this.y + this.h/2 + 70);
    popStyle();


    // Icona del botó
    pushStyle();
    textAlign(CENTER);
    fill(getColorAt(7));
    strokeWeight(1);
    rect(this.x, this.y + this.h + 15, 140, 50);
    fill(0);
    textSize(36);
    text("+1", this.x + 70, this.y + this.h + 15 + 38);
    fill(getColorAt(8));
    rect(this.x + this.w - 140, this.y + this.h + 15, 140, 50);
    fill(0);
    textSize(36);
    text("-1", this.x + this.w - 70, this.y + this.h + 15 + 38);
    popStyle();
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
