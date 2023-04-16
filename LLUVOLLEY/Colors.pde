// Pestaña con la información de los colores de la App

// Array de colores
color[] colors;

// Establece los colores de la App
void setColors() {
  this.colors = new color[9];
  this.colors[0] = color(#072AC8);
  this.colors[1] = color(#1E96FC);
  this.colors[2] = color(#A2D6F9);
  this.colors[3] = color(#F0C808);
  this.colors[4] = color(#FBE474);
  this.colors[5] = color(#FFF5B7);
  this.colors[6] = color(#FFFFFF);
  this.colors[7] = color(#71A253);
  this.colors[8] = color(#F2542D);
}

// Getter del número de colores
int getNumColors() {
  return this.colors.length;
}

// Getter del color i-éssimo
color getColorAt(int i) {
  return this.colors[i];
}
