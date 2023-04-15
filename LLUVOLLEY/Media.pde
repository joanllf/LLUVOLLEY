// Pestaña con la información de la inteficie grafica de la App

// URL de la carpeta on hi ha les imatges
String URL_IMGS = "imgs/";

// Array d'imatges (JPG, PNG, GIF)
PImage[] imgs;

// Estableix les imatges de l'App
void setMedias() {
  this.imgs = new PImage[4];
  this.imgs[0] = loadImage(URL_IMGS+"/logo.png");
  this.imgs[1] = loadImage(URL_IMGS+"/fondo.jpg");
  this.imgs[2] = loadImage(URL_IMGS+"/left.png");
  this.imgs[3] = loadImage(URL_IMGS+"/add.png");
}

// Getter del número d'imatges
int getNumImatges() {
  return this.imgs.length;
}

// Getter de la imatge del logo
PImage getLogo() {
  return  this.imgs[0];
}

// Getter de la imatge del fondo
PImage getFondo() {
  return  this.imgs[1];
}

// Getter de la imatge de la icona
PImage getIcon() {
  return  this.imgs[2];
}

// Getter de la imatge i-èssima
PImage getImgAt(int i) {
  return this.imgs[i];
}


// Dibuixa el logo
void displayLogo(float x, float y, float w, float h) {
  image(getLogo(), x, y, w, h);
}

// Dibuixa la Icona
void displayIcon(float x, float y, float w, float h) {
  image(getIcon(), x, y, w, h);
}

// Dibuixa el Banner
void displayFondo(float x, float y, float w, float h) {
  image(getFondo(), x, y, w, h);
}

// Dibuixa la imatge i-èssima
void displayImg(int i, float x, float y, float w, float h) {
  image(getImgAt(i), x, y, w, h);
}
