// Clase Counter

class Counter {

  // Valor del contador
  int value = 0;
  int minValue = 0, maxValue = 150;
  int stepValue = 1;

  // Propiedades de un counter:
  float x, y, w, h;  // Posición y dimensiones

  // Constructor
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

  void resetCounter() {
    this.value = 0;
  }
  //Getter del valor
  int getValue() {
    return this.value;
  }

  // Dibuja el counter
  void display() {

    strokeWeight(1);
    fill(getColorAt(3));                            // Color
    rect(this.x, this.y, this.w, this.h);   // Rectangulo del botón

    pushStyle();
    textAlign(CENTER);
    fill(0);
    textSize(150);
    text(value, this.x + this.w/2, this.y + this.h/2 + 70);
    popStyle();


    // Icona del botón
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

  // Indica si el cursor esta sobre el botón Más
  boolean mouseOverButtonMes() {
    return mouseX >= this.x && mouseX <= this.x + 140 &&
      mouseY >= this.y + this.h + 15 && mouseY <= this.y + this.h + 15 + 50;
  }

  // Indica si el cursor esta sobre el botón Menos
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
