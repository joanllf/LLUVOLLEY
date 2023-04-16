// Componentes Campo de Texto

class TextField {

  // Propiedades del campo de texto
  float x, y, h, w;
  float startX = 20,
    startY = 30;

  // Colores
  color bgColor = getColorAt(4);
  color fgColor = color(0, 0, 0);
  color selectedColor = getColorAt(5);
  ;
  color borderColor = color(0);
  int borderWeight = 1;

  // Texto del campo
  String text = "";
  int textLength = 0;
  int textSize = 24;

  boolean selected = false;

  // Constructor
  TextField(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  // Dibuja el Campo de Texto
  void display() {
    pushStyle();
    if (selected) {
      fill(selectedColor);
    } else {
      fill(bgColor);
    }

    strokeWeight(borderWeight);
    stroke(borderColor);
    rect(x, y, w, h);

    fill(fgColor);
    textSize(textSize);
    text(text, x + startX, y + startY);
    popStyle();
  }

  //Setters
  void changeX(float x) {
    this.startX = x;
  }

  void changeY(float y) {
    this.startY = y;
  }

  void setTextSize(int t) {
    this.textSize = t;
  }

  // Añade, elimina el texto que se teclea
  void keyPressed(char key, int keyCode) {
    if (selected) {
      if (keyCode == (int)BACKSPACE) {
        removeText();
      } else if (keyCode == 32) {
        addText(' '); // SPACE
      } else {

        boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
        boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
        boolean isKeyNumber = (key >= '0' && key <= '9');
        boolean isPoint = (key=='.');

        if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber || isPoint) {
          addText(key);
        }
      }
    }
  }

  void removeAllText() {
    this.text = "";
  }

  // Añade la letra c al final del texto
  void addText(char c) {
    if (textWidth(this.text + c) < 2*w) {
      this.text += c;
      textLength++;
    }
  }

  // Elimina la última letra del texto
  void removeText() {
    if (textLength - 1 >= 0) {
      text = text.substring(0, textLength - 1);
      textLength--;
    }
  }

  // Indica si el cursor esta sobre el campo de texto
  boolean mouseOverTextField() {
    if (mouseX >= this.x && mouseX <= this.x + this.w) {
      if (mouseY >= this.y && mouseY <= this.y + this.h) {
        return true;
      }
    }
    return false;
  }

  // Seleciona el campo de texto si pulsamos encima
  // Deseleciona el campo de texto si pulsamos a fuera
  void isPressed() {
    if (mouseOverTextField()) {
      selected = true;
    } else {
      selected = false;
    }
  }

  String getValue() {
    return this.text;
  }

  void reset() {
    this.text ="";
  }
}
