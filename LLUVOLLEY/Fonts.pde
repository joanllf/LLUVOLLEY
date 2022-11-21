// Pestaña con la información de las fuentes de la App
  
// Array de tipografies
PFont[] fonts;
  
// Estableix les fonts de l'App
void setFonts(){
    this.fonts = new PFont[7];
    this.fonts[0] = createFont("Montserrat-Regular.ttf", midaTitol);
    this.fonts[1] = createFont("Montserrat-Bold.ttf", midaTitol);
    this.fonts[2] = createFont("Hack-Regular.ttf", midaSubtitol);
    this.fonts[3] = createFont("Hack-Bold.ttf", midaTitol);
    this.fonts[4] = createFont("Hack-Italic.ttf", midaTitol);
    this.fonts[5] = createFont("Hack-BoldItalic.ttf", midaTitol);
    this.fonts[6] = createFont("BebasNeue-Regular.ttf", midaParagraf);
}
  
  // Getter del número de fonts
  int getNumFonts(){
    return this.fonts.length;
  }
  
  // Getter de la font primaria
  PFont getFirstFont(){
    return  this.fonts[0];
  }
  
  // Getter de la fuente primaria en negrita
  PFont getFirstFontB(){
    return  this.fonts[1];
  }
  
  // Getter del font secundaria
  PFont getSecondFont(){
    return  this.fonts[2];
  }
  
  // Getters de la fuente secundaria en negrita, cursiva o ambas
  PFont getSecondFontB(){
    return  this.fonts[3];
  }
  
  PFont getSecondFontI(){
    return  this.fonts[4];
  }
  
  PFont getSecondFontBI(){
    return  this.fonts[5];
  }
  
  // Getter del la font terciaria
  PFont getThirdFont(){
    return  this.fonts[3];
  }
  
  // Getter de la font i-èssima
  PFont getFontAt(int i){
    return this.fonts[i];
  }
  
  /*
  // Dibuixa les font de l'App
  void displayFonts(float x, float y, float h){
    pushStyle();     
      for(int i=0; i<getNumFonts(); i++){
        fill(0); stroke(0); strokeWeight(3);
        textFont(getFontAt(i));
        text("Tipografia "+i, x, y + i*h);
      }
    popStyle();
  }
  */
