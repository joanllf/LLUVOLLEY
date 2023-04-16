// Pestaña con la información de la inteficie grafica de la App

// URL de la carpeta donde hay las imagenes
String URL_IMGS = "imgs/";

// Array de imagenes (JPG, PNG, GIF)
PImage[] imgs;

// Establece las imagenes de la App
void setMedias() {
  this.imgs = new PImage[4];
  this.imgs[0] = loadImage(URL_IMGS+"/logo.png");
  this.imgs[1] = loadImage(URL_IMGS+"/fondo.jpg");
  this.imgs[2] = loadImage(URL_IMGS+"/left.png");
  this.imgs[3] = loadImage(URL_IMGS+"/add.png");
}

// Getters
int getNumImatges() {
  return this.imgs.length;
}

PImage getLogo() {
  return  this.imgs[0];
}

PImage getFondo() {
  return  this.imgs[1];
}

PImage getIcon() {
  return  this.imgs[2];
}

PImage getImgAt(int i) {
  return this.imgs[i];
}

// Dibuja el logo
void displayLogo(float x, float y, float w, float h) {
  image(getLogo(), x, y, w, h);
}

// Dibuja la icona
void displayIcon(float x, float y, float w, float h) {
  image(getIcon(), x, y, w, h);
}

// Dibuja el fondo
void displayFondo(float x, float y, float w, float h) {
  image(getFondo(), x, y, w, h);
}
