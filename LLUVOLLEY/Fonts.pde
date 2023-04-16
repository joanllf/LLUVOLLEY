// Pestaña con la información de las fuentes de la App

// Array de tipografías
PFont[] fonts;

// URL de la carpeta donde hay les fuentes
String URL_FONT = "fonts/";

// Establece la fuentes de la App
void setFonts() {
  this.fonts = new PFont[7];
  this.fonts[0] = createFont(URL_FONT + "Montserrat-Regular.ttf", 60);
  this.fonts[1] = createFont(URL_FONT + "Montserrat-Bold.ttf", 60);
  this.fonts[2] = createFont(URL_FONT + "Hack-Regular.ttf", 54);
  this.fonts[3] = createFont(URL_FONT + "Hack-Bold.ttf", 60);
  this.fonts[4] = createFont(URL_FONT + "Hack-Italic.ttf", 60);
  this.fonts[5] = createFont(URL_FONT + "Hack-BoldItalic.ttf", 60);
  this.fonts[6] = createFont(URL_FONT + "BebasNeue-Regular.ttf", 30); //monospace
}

// Getters
int getNumFonts() {
  return this.fonts.length;
}

PFont getFirstFont() {
  return  this.fonts[0];
}

PFont getFirstFontB() {
  return  this.fonts[1];
}

PFont getSecondFont() {
  return  this.fonts[2];
}

PFont getSecondFontB() {
  return  this.fonts[3];
}

PFont getSecondFontI() {
  return  this.fonts[4];
}

PFont getSecondFontBI() {
  return  this.fonts[5];
}

PFont getThirdFont() {
  return  this.fonts[3];
}

PFont getFontAt(int i) {
  return this.fonts[i];
}
