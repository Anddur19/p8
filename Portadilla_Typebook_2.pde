import processing.pdf.*;

PFont fuente;

void setup() {
  size(1300, 800);
  
  beginRecord(PDF, "PortadillaTypebook.pdf");  // empieza a grabar
  
  background(255, 182, 193);
  
  fuente = createFont("Big Caslon Pro", 150);
  textFont(fuente);
  textAlign(CENTER, UP);
  
  float centroY = height/2;
  float startX = 100;
  float espacio = 120;
  
  fill(20);
  
  text("G", startX + espacio*0, centroY - 25);
  text("R", startX + espacio*1, centroY + 25);
  text("A", startX + espacio*2, centroY - 25);
  text("F", startX + espacio*3, centroY + 25);
  text("I", startX + espacio*4, centroY - 25);
  text("C", startX + espacio*5, centroY + 25);
  text("A", startX + espacio*6, centroY - 25);
  
  endRecord();  // termina de grabar
  
  println("PDF guardado correctamente ✨");
  exit();  // cierra el sketch
}

void draw() {
}
