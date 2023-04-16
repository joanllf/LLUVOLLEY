//Clase Select

class Select {

  float x, y, w, h;          // Posición y dimensiones
  String[] texts;            // Valores posibles
  String selectedValue;      // Valor Seleccionado

  boolean collapsed = true;  // Plegado / Desplegado
  boolean enabled;           // Habilitado / deshabilitado

  float lineSpace = 5;      // Espacio entre línieas

  //Constructor
  Select(String[] texts, float x, float y, float w, float h) {
    this.texts = texts;
    this.selectedValue = "";
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    this.collapsed = true;
  }

  //Dibuja Select
  void display() {
    pushStyle();
    stroke(0);
    strokeWeight(1);
    fill(getColorAt(4));
    rect(x, y, w, h);

    textFont(getFontAt(1));
    fill(0);
    textSize(24);
    text(selectedValue, x + 20, y + 40);

    if (!this.collapsed) {

      fill(255);
      stroke(0);
      rect(x, y+h, w, (h + lineSpace)*texts.length);

      for (int i=0; i<texts.length; i++) {

        if (i == clickedOption()) {
          fill(200);
          noStroke();
          rect(x+4, y+4 + h + (h + lineSpace)*i - 2, w -8, h + lineSpace - 8);
        }

        pushStyle();
        textFont(getFontAt(1));
        textSize(18);
        fill(0);
        text(texts[i], x + 10, y + h + 40 + (h + lineSpace)*i);
        popStyle();
      }
    }
    popStyle();
  }

  //Setters
  void setCollapsed(boolean b) {
    this.collapsed = b;
  }

  void toggle() {
    this.collapsed = !this.collapsed;
  }


  void update() {
    int option = clickedOption();
    selectedValue = texts[option];
  }

  // Indica si el cursor esta sobre el select
  boolean mouseOverSelect() {
    if (this.collapsed) {
      return (mouseX >= x) &&
        (mouseX <= x + w) &&
        (mouseY >= y) &&
        (mouseY <= y + h);
    } else {
      return (mouseX>= x) &&
        (mouseX<= x + w) &&
        (mouseY>= y) &&
        (mouseY<= y + h + (h + lineSpace)*texts.length);
    }
  }

  int clickedOption() {
    int i = (int)map(mouseY, y + h, y + h + (h + lineSpace)*texts.length,
      0, texts.length);
    return i;
  }
}
