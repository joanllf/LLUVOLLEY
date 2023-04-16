//Clase SelectTextList

class SelectTextList {

  float x, y, w, h;          // Posición y dimensiones
  String[] texts;            // Valores posibles

  TextField textField;       // Campo de texto

  String selectedId;         // Id Selecionado
  String selectedValue;      // Valor Selecionado

  boolean enabled;           // Habilitado / deshabilitado

  int numMatchs = 0;
  ArrayList<Option> options;

  //Constructor
  SelectTextList(String[] texts, float x, float y, float w, float h) {
    this.texts = texts;
    this.selectedId = "";
    this.selectedValue = "";
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;

    this.textField = new TextField((int)x, (int)y, (int)w, (int)h);
    this.options = new ArrayList<Option>();
  }

  //Dibuja SelectTextList
  void display() {
    pushStyle();
    textField.display();

    for (Option b : this.options) {
      b.display();
    }
    popStyle();
  }

  void update() {
    String searchFor = this.textField.text;

    this.numMatchs = 0;
    this.options = new ArrayList<Option>();

    if (this.textField.selected) {

      if (searchFor.length() > 0) {
        for (int i=0; i<texts.length; i++) {
          if (texts[i].startsWith(searchFor)) {
            Option b = new Option(texts[i], x, y + h + 5 + (h + 5)*numMatchs, w, h);
            options.add(b);
            this.numMatchs++;
            if (this.numMatchs==5) {
              break;
            }
          }
        }
      } else {
        for (int i=0; i<texts.length; i++) {
          Option b = new Option(texts[i], x, y + h + 5 + (h + 5)*i, w, h);
          options.add(b);
          if (i==3) {
            break;
          }
        }
      }
    } else {
      options.clear();
    }
  }

  void reset() {
    this.textField.reset();
  }

  boolean mouseOverButtons() {
    for (Option b : options) {
      if (b.mouseOverButton()) {
        return true;
      }
    }
    return false;
  }

  void buttonPressed() {
    boolean pressed = false;
    for (Option b : options) {
      if (b.mouseOverButton()) {
        this.textField.text = b.textBoto;
        this.selectedValue  = b.textBoto;
        for (int i=0; i<texts.length; i++) {
          if (texts[i].equals(this.selectedValue)) {
            this.selectedId = texts[i];
            break;
          }
        }
        pressed = true;
      }
    }
    if (pressed) {
      options.clear();
    }
  }


  void mouseOn() {
    // Pulsamos sobre el textList
    this.textField.isPressed();
    this.buttonPressed();

    if (this.textField.selected) {
      this.update();
    } else {
      this.options.clear();
    }
  }

  void keyOn() {
    if (this.textField.selected) {
      this.textField.keyPressed(key, (int)keyCode);
      this.update();
    }
  }
}
