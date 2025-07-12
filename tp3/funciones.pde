
 //funcion que retorna un valor 
 color calcularColor(boolean c) {
  if (c) {
    return int(map(sin(frameCount), -1, 1, 0, 255)); //mapea un color logrando un parpadeo
  } else {
    return 0;
  }
}
//funcion que no retorna un valor 
void Cuadrados(int posX, int posY, int posX2, int posY2, int tam, int cant) {
  for (int i = 0; i <= cant; i++) {
    if (i % 2 == 0) {
      fill(colorN, colorN, colorN);
    } else {
      fill(255 - colorN, 255 - colorN, 255 - colorN);
    }

   rect(posX + i * 10, posY2 + i % 2, tam - i * 10, tam - i * 10);
   rect(posX2 - i % 2, posY + i * 10, tam - i * 10, tam - i * 10);
  
   if (i % 2 == 0) {
     fill(255 - colorN, 255 - colorN, 255 - colorN);
   } else {
     fill(colorN, colorN, colorN);
   }
   rect(posX + i * 10, posY + i * 10, tam - i * 10, tam - i * 10);
   rect(posX2 - i % 2, posY2 - i % 2, tam - i * 10, tam - i * 10);
  }
}



//cambie la forma y logre hacer una funcion que abarque tdos los cuadrados juntos (pero por las dudas la dejo)
//void CuadradosNegros(int posX, int posY, int posX2, int posY2, int tam, int cant) {//cuadrados que empiezan del negro
//  for (int j = 0; j <= cant; j++) {
//    if (j % 2 == 0) {
//      fill(255 - colorN, 255 - colorN, 255 - colorN);
//    } else {
//      fill(colorN, colorN, colorN);
//    }

//    rect(posX + j * 10, posY + j * 10, tam - j * 10, tam - j * 10);
//    rect(posX2 - j % 2, posY2 - j % 2, tam - j * 10, tam - j * 10);
//  }
//}


   
