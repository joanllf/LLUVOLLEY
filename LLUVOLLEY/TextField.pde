// Component Camp de Text

class TextField {
  
  // Propietats del camp de text
  float x, y, h, w;
  
  // Colors
  color bgColor = getColorAt(4);
  color fgColor = color(0, 0, 0);
  color selectedColor = getColorAt(5);;
  color borderColor = color(0);
  int borderWeight = 1;
  
  // Text del camp
  String text = "";
  int textLength = 0;
  int textSize = 24;

  boolean selected = false;
   
  // Constructor
  TextField(float x, float y, float w, float h) {
      this.x = x; this.y = y; this.w = w; this.h = h;
   }
  
  // Dibuixa el Camp de Text
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
      text(text, x + 20, y + 30);
     popStyle();
   }
   
   // Afegeix, lleva el text que es tecleja
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
      
           if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
               addText(key);
           }
         }
      }
   }
   
   // Afegeix la lletra c al final del text
   void addText(char c) {
      if (textWidth(this.text + c) < w) {
         this.text += c;
         textLength++;
      }
   }
   
   // Lleva la darrera lletra del text
   void removeText() {
      if (textLength - 1 >= 0) {
         text = text.substring(0, textLength - 1);
         textLength--;
      }
   }

   // Indica si el ratolí està sobre el camp de text
   boolean mouseOverTextField() {
      if (mouseX >= this.x && mouseX <= this.x + this.w) {
         if (mouseY >= this.y && mouseY <= this.y + this.h) {
            return true;
         }
      }
      return false;
   }
   
   // Selecciona el camp de text si pitjam a sobre
   // Deselecciona el camp de text si pitjam a fora
   void isPressed() {
      if (mouseOverTextField()) {
         selected = true;
      } else {
         selected = false;
      }
   }
}
