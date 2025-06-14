//valentina ibazeta
// 120322/4
//https://youtu.be/1Tux1Jhla6U

void setup(){
  size(800, 400);
  ImagenDeReferencia = loadImage("cuadrados.png");
}

void draw(){
  background (0);
  println( mouseX + "/" + mouseY);
  image(ImagenDeReferencia, 0, 0, 400, 400);
  translate(600,200);
  if (rotacion){
    rotate(radians(frameCount * 15)); // aplica una rotacion cuando se activa 
  }
  if (cambioDeColor){
   colorN = int(map(sin(frameCount), -1,  1, 0, 255)); //sirve para que el  color vaya del 0 a 255 ,  logrando un parpadeo 
  } else {
    colorN = 0;
  }
  
 for (int i = 0; i <= cant; i++) {
    //alterna los colores si es par se pinta de negro y si es impar de blanco 
   if ( i % 2 == 0) {
     fill (colorN, colorN, colorN);
   } else {
     fill (255 - colorN, 255 - colorN, 255 - colorN);
   }
   rect(posX + i * 10, posY2 + i % 2, tam - i * 10, tam - i * 10);
    rect(posX2 - i % 2, posY + i * 10 , tam - i * 10, tam - i * 10);
    //declare otro ciclo for para que se pongan de manera contraria al primero 
     for (int j = 0; j <= cant; j++) {
   // alterna los colores si es par se pinta de blanco y si es impar de negro
   if ( j % 2 == 0) {
     fill (255 - colorN, 255 - colorN, 255 - colorN);
   } else {
     fill (colorN, colorN, colorN);
   }
    rect(posX + j * 10, posY+ j * 10, tam - j * 10, tam - j * 10);
    rect(posX2 - j % 2, posY2 - j % 2 , tam - j * 10, tam - j * 10);
  }
 }
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
   
