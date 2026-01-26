import processing.pdf.*;
//1.Crear la variable
PFont myfont;
boolean Record;
boolean check;
float g;
int inc;
void setup() {
  size(500, 500);
  //2. Variable recoger el archivo de font
  myfont=createFont("AcuminVariableConcept.otf", 25);
  frameRate(2);
}
void draw() {
  if (Record) {
    beginRecord(PDF, "soyuna-####.pdf");
  }
  background(0);
  if (check == true) {
    inc=-1;
  } else {
    inc=-1;
  }
  //3. Asignar la variable al texto
  textFont(myfont);

  for (float posy=20; posy<height-30; posy=posy+30) {
    for (float posx=20; posx<width-20; posx=posx+30) {
      pushMatrix();
      translate(posx, posy);

      if (g>360) {
        check=false;
      } else if (g<=0) {
        check=true;
      }
      if (g<=0) {
        check=true;
      }
      if (check==false) {
        inc=-1;
      }
      if (check==true) {
        inc=1;
      }
      float m=map(mouseX, .1, 30, 0, width);
      g=g+1.4*inc;
      rotate(radians(g));
      text("a", -15+mouseX, 10);
      popMatrix();
    }
  }

  //text("a", random (width), random (height));
  if (Record) {
    endRecord();
    Record=false;
  }
  println(Record);
}
void mousePressed() {
  Record=true;
}
