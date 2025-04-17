PImage celular;

void setup (){ 
size (800, 400);
celular = loadImage ("celular.png");



}

void draw (){ 
  //cambio de color segun la posicion del mouse
  background (mouseX % 255, mouseY %  255, 100);
  image  (celular, 0, 0, 400, 400);
  println (mouseX + "/" + mouseY);
  strokeWeight (1);
  pushMatrix(); //para que se realice la rotacion
  //celular rotado 20º
  stroke(0);
  translate(652, 115);
  rotate(radians(20));
  fill(0);
  rect(0, 0, 140, 210,20);
  fill(0, 0, 255, 20);
  rect(20, 40, 100, 95);
  

  //auriculares rotados 
   
  translate (-100, 150);
  rotate(radians(40));
  fill(255);
  rect(0, 0, 90, 80, 15);
 
  //circulo auriculares
  stroke (255);
  circle (10, -80, 30);
  circle( 10, -40, 30);
  
  //lineas de auriculares
  popMatrix();// para que deje de rotar
  strokeWeight (7);
  stroke (255);
  line(567, 184, 579, 242);
  line (534, 218, 547, 255);
  stroke (255);
  strokeWeight(2);
  line(610, 275, 706, 310); //linea de reproduccion 
  line(615, 263, 656, 277); //linea simulando nombre de cancion
  fill(255);
  circle( 657, 307, 15);
  strokeWeight (2);
  line(671, 306, 668, 317);
  line (668, 318, 683, 316); 
  line (682, 316, 672, 305);
  line ( 686, 310, 680, 324);// linea vertical
  line (646, 294, 642, 305);
  line ( 646, 294, 630, 296);
  line (630, 296, 641, 306);
 line (630, 290, 626, 300);//linea vertical
 
 //linea de caja de auriculares
  stroke(0);
  strokeWeight(2);
  line (450, 282, 518, 241);
  
  

  }
