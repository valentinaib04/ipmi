
void setup() {
  size(640, 480);
  uno = loadImage("uno.jpg");
  dos = loadImage("dos.jpg");
  tres = loadImage("tres.jpg");
  cuatro = loadImage("cuatro.jpg");
  texto1 = ("Sugar Rush: Super Raceway es un videojuego de carreras inspirado en el universo de Ralph el Demoledor una película de Disney.\nEl juego toma como base un el juego ficticio “Sugar Rush”, que aparece en la película, y lo lleva al mundo real mediante una versión jugable y divertida.");
  texto2 = (" El juego surge como un proyecto escolar basado en la idea de recrear un videojuego de la película “Ralph el Demoledor”, donde uno de los juegos más populares dentro del mundo del arcade es Sugar Rush. \nEste juego, lleno de colores, dulces y pistas temáticas de golosinas, fue la inspiración perfecta para desarrollar una versión educativa utilizando herramientas como Scratch o MakeCode Arcade.");
  texto3 = ("¿Quién lo creó? \nEste proyecto fue desarrollado por estudiantes con el objetivo de aprender programación, diseño gráfico y lógica de videojuegos. \nUtilizando plataformas accesibles como Scratch, lograron programar movimientos, animaciones, obstáculos y potenciadores. \nTambién diseñaron los escenarios, personajes y la mecánica del juego.");
  texto4 = ("¿Cómo se juega? \n1 Selección de personaje. \n2 El Objetivo es Ganar una carrera de 3 vueltas en una pista llena de dulces, obstáculos y sorpresas. \n3 Ganas cuando completes las 3 vueltas en el menor tiempo posible, esquivando obstáculos y usando los potenciadores estratégicamente.");
  Tipos = loadFont("Century.vlw");
  textFont(Tipos);
  textSize(23);
  movimiento1 = 2;
  movimiento2 = 2.5;
  contador = 0;
  offsetFrames = 0;
  posAtras = -500;
  posX1 = -500;
  posX2 = -500;
  posX3 = -640;
  posX4 = -500;
  posY2= -480;
  posY4= -480;
}


void draw() {
  contador = frameCount - offsetFrames;
  println (contador);
  println(mouseX + " / " + mouseY );
  //pantalla1
  if (contador < 490) {
    image(uno, 0, 0, 640, 480);
    // fondo del rectangulo
    fill(255, 100);
    rect( posX1, 40, 600, 200);
    //texto centrado a la  izquierda
    textAlign(LEFT);
    fill( 0);
    //el +10 para que le deje un margen al rectangulo
    text(texto1, posX1+10, 48, 580, 230);
    //el texto se empieza a ver a partir del frame 460
    if ( contador <= 460 ) {
      // declare una variable de movimiento2 para que el texto salga de la pantalla
      posX1 += movimiento2;
      posX2 = posAtras;
    }
  }
  //pantalla2
  if (contador > 500) {
    if (posY2 < 0) {
      image( dos, 0, posY2, 640, 480);  // para que la imagen baje
    } else { //para que se quede quieta y siga el texto bajando
      image( dos, 0, 0, 640, 480); //
    }
    //color y tamano  del rectangulo
    fill(255, 100);
    rect (20, posY2, 600, 300);
    textAlign(LEFT);
    fill( 0);
    // 25 para que se mueva un poco a la  derecha y el +10 para que baje un poco
    text(texto2, 25, posY2+10, 580, 430);
    if (contador >=500 ) {
      posY2 += movimiento1;
      // posX3 = posAtras;
    }
  }
  //pantalla3
  if ( contador >950) {
    //  posX3 = 0;
    if ( posX3 < 0) {
      image(tres, posX3, 0, 640, 480 );
      posX3 += movimiento1;
    } else {
      image(tres, 0, 0, 640, 480) ;
    }
    //color y tamano del rectangulo
    fill (255, 100);
    rect (posX3+15, 10, 600, 250);
    textAlign(LEFT);
    fill(0);
    text(texto3, posX3+20, 20, 600, 300);
    if ( contador >=1000) {
      posX3 += movimiento1;
      posX4 = posAtras;
    }
  }
  //pantalla4
  if (contador  >= 1350) {
    if (posY4 < 0) {
      image (cuatro, 0, posY4, 640, 480);
      posY4 += movimiento1;
    } else {
      image (cuatro, 0, 0, 640, 480);
    }
    //color y tamano del rectangulo
    fill(255, 100);
    rect ( 10, posY4, 600, 250);
    textAlign(LEFT);
    fill(0);
    text(texto4, 20, posY4+10, 600, 300);
    if (contador >= 1500) {
      posY4 += movimiento1;
      posX4 = posAtras;
    }
  }
  //Boton superficial
  if ( contador > 1770 ) {
    background(255);
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text("valentina ibazeta", width /2, height / 2 - 50);
    //boton base
    fill(255, 0, 255);
    rect( 410, 355, 190, 90);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text("Reiniciar", 505, 393);
    // hover (cambio de color)
    if ( contador > 1770 && mouseX>410 && mouseX<600 && mouseY>355 && mouseY<445) {
      fill(255, 0, 0);
      rect( 410, 355, 190, 90);
      textSize(20);
      fill(0);
      text("  Reiniciar ", 505, 393);
    }
  }
}
void mousePressed () {
  // boton
  if ( frameCount > 1770 && mouseX>410 && mouseX<600 && mouseY>355 && mouseY<445) {
    offsetFrames = frameCount ;
    println( "Reinicio ejecutado");
    contador = 0;
    posX1 = -500;
    posX2 = -500;
    posX3 = -640;
    posX4 = -500;
    posY2= -480;
    posY4= -480;
    movimiento1 = 2;
    movimiento2 = 2.5;
  }
}
