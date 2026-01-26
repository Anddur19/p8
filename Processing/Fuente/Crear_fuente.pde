//1.Crear la variable
PFont myfont; 
void setup(){
  size(500, 500);
  //2. Variable recoger el archivo de font
  myfont=createFont("AcuminVariableConcept.otf",80);
}
void draw(){
  background(90);
  textSize(40);
  //3. Asignar la variable al texto
  textFont(myfont);
  text("hola",width/2,height/2);
}
