
//ibazeta valentina 120322/4
// video de Youtube https://youtu.be/q9_QJaO_JOE?si=brUBfVxlEKRQzE7g 
//variables 
PImage ImagenDeReferencia;
int posX = -200;
int posX2 = 0;
int posY = -200;
int posY2 = 0;
int tam = 200;
int colorN = 0;
int cant = 17;
float rotationSpeed = radians(1); //velocidad de rotacion
boolean cambioDeColor = false; // controla el cambio de color
boolean rotacion = false; //controla la rotacion 



void setup () {
  size(800, 400);
  ImagenDeReferencia = loadImage("cuadrados.png");
}

void draw() {
  background (0);
  println( mouseX + "/" + mouseY);
  image(ImagenDeReferencia, 0, 0, 400, 400);
  translate(600,200);
  if (rotacion){
  rotate(radians(frameCount * 15)); // aplica una rotacion cuando se activa 
  }
  colorN = calcularColor(cambioDeColor);
  //CuadradosNegros(posX, posY, posX2, posY2, tam, cant);
  Cuadrados(posX, posY, posX2, posY2, tam, cant);
}
void reiniciar(){
  rotacion = false;
  cambioDeColor = false;
}
void keyPressed() {
  if (key == 'a') { // Tecla 'a' para iniciar la rotación
    rotacion = true;
  } else if (key == 'g') { // Tecla 'g' para iniciar el cambio de color
    cambioDeColor = true;
  } else if (key == 'd') { // Tecla 'd' para detener la rotación y reiniciar
    reiniciar();
  
}
}
