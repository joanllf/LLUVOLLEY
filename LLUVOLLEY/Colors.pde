// Pestaña con la información de los colores de la App

// Array de colors
color[] colors;

// Estableix colors de l'App
void setColors() {
  this.colors = new color[7];
  this.colors[0] = color(#072AC8);
  this.colors[1] = color(#1E96FC);
  this.colors[2] = color(#A2D6F9);
  this.colors[3] = color(#F0C808);
  this.colors[4] = color(#FBE474);
  this.colors[5] = color(#FFF5B7);
  this.colors[6] = color(#FFFFFF);
}

// Getter del número de colors
int getNumColors() {
  return this.colors.length;
}

// Getter del color primari
color getFirstColor() {
  return  this.colors[0];
}

// Getter del color secundari
color getSecondColor() {
  return  this.colors[1];
}

// Getter del color terciari
color getThirdColor() {
  return  this.colors[2];
}

// Getter del color i-èssim
color getColorAt(int i) {
  return this.colors[i];
}


// Dibuixa paleta de colors
void displayColors(float x, float y, float w) {
  pushStyle();
  //Llegenda
  fill(0);
  textAlign(LEFT);
  textSize(36);
  text("Colors:", x, y-10);

  // Paleta de colors
  float wc = w / getNumColors();
  for (int i=0; i<getNumColors(); i++) {
    fill(getColorAt(i));
    stroke(0);
    strokeWeight(3);
    rect(x + i*wc, y, wc, wc);
  }
  popStyle();
}
