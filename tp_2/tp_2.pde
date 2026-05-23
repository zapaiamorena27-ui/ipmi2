  /*
  "Los Sims 4", juego interactivo
  Alumna: Morena Yel Zapaia
  Comision: 2
  Legajo: 125707/1
  */
  
// palabras azules = FUNCIONALES
// palabras naranjas = VARIABLES

int pantalla = 0;
int tiempo;

PImage Menu, imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, FilmRed, Sims4;
PFont FuenteComicSans;
float xTexto = 800;
float yTexto = 600;

 boolean inicio = false;
 
 void setup() {
  size(640,480);
 
   //carga de imagenes
  Menu = loadImage("pantallaPrincipal.png");
 imagen1= loadImage("IncioDelJuego.png");
 imagen2= loadImage("CrearSim.png");
 imagen3= loadImage("Sim.png");
 imagen4= loadImage("interraccion.png");
 imagen5= loadImage("CasaSim.png");                                                        
 imagen6= loadImage("Familia.png");
 imagen7= loadImage("MisionSim.png");
 imagen8= loadImage("Interaccion2.png");
 Sims4 = loadImage("Sims4.png");

 FuenteComicSans = loadFont("ComicSansMS-48.vlw");
 textFont(FuenteComicSans, 14);

 tiempo = millis();

}  
 
void draw () {

  if(inicio == true) {
    if (millis() - tiempo > 10000) {
      pantalla++;
      tiempo = millis();
      
      yTexto = 600;
      xTexto = 800;
    }  
  }
if (pantalla == 0) {
 image(Menu, 0, 0, width, height);
 
  fill(0);
  rect(220, 350, 200, 60);
  
  fill(253);
  textSize(28);
  text("comenzar", 260, 390);
}

 if (pantalla == 1) {
  background(0);
  image(imagen1, 0, 0, width, height);
  
  fill(0);
  rect(10, 350, 620, 60);
  
  fill(255);
  textSize(15);
  text("Los sims4 es un juego interactivo donde puedes crear tus pripos personajes y casa a tu gusto con iniciar una nueva partida al entrar al juego", xTexto, yTexto );
 
 if(yTexto > 370) {
   yTexto -= 1;
  }     
}
 
 if (pantalla == 2) {
   background(0);
   image(imagen2, 0, 0, width, height);
 
 fill(0);
 rect(10, 350, 620, 60);
 
 fill(253);
 textSize(10);
 text("despues de haber creado a tus sims a gusto personal propio, el mismo juego te hara un tutorial para principiante y enseñarte las mecanicas e interracciones en el juego", xTexto, yTexto);
 
 if (xTexto > 15) {
   xTexto -= 5;
  }
}

 if (pantalla == 3) {
  background(0);
   image(imagen3, 0, 0, width, height);
 
 fill(0);
 rect(10, 350, 620, 60);
 
 fill(253);
 textSize(15);
 text("luego de haber terminado por completo el tutorial, finalmente podras jugar y hacer interracciones  amistosas, rivalidades, romanticas y familiar entre tus propios sims o los del juego con misiones adicionales", xTexto, yTexto);
 
 if (yTexto > 370) {
   yTexto = 1;
  } 
} 
 if (pantalla == 4) {
  background(0);
   image(imagen4, 0, 0, width, height);
 
 fill(0);
 rect(10, 350, 620, 60);
 
 fill(253);
 textSize(15);
 text("esas misiones adicionales con tiempo limitado podras obtener recompensas gratis que el mismo juego te da para decorar tu casa sim tanto en su interiror como el exterrior, los mismos sims con ropa nueva ect", xTexto, yTexto + 60);
 
if (yTexto > 15) {
   yTexto = 5;
  } 
} 

 
 if (pantalla == 5) {
  background(0);
   image(imagen5, 0, 0, width, height);
 
 fill(0);
 rect(10, 350, 620, 60);

 fill(253);
 textSize(15);
 text("Tambien en el juego tener otras misiones extras que vienen con el gamePass, es decir, tener que comprar esas misiones exclusivas con distintos niveles del juego dependiendo del precio y lo que desea el mismo jugador para sus sims personalizados", xTexto, yTexto);
  
 if (yTexto > 370) {
   yTexto = 2;
  } 
} 
 
 
 if (pantalla == 6) {
  background(0);
   image(imagen6, 0, 0, width, height);
 
 fill(0);
 rect(10, 350, 620, 60);

 fill(253);
 textSize(15);
 text("finalmente llegamos a la recta final, el juego de los sims4 es totalmente gratis sin la necesidad de pagarlo cuando deseas jugar libremente, este mismo posee pases exclusivos en distintas fechas con timpo limitado, misiones extras, interraccion entre tus mismos sims, conseguirles trabajo, modificar tu casa y muchas cosas mas!", xTexto, yTexto + 20);
 
 if (xTexto > 80) {
   xTexto = 4;
  }
  
 if (yTexto > 370) {
   yTexto = 2;
  }
 }
  
 if (pantalla == 7) {
   background(0);
   
   textSize(16);
   text("fin.", 294, height/2);
   
   fill(108, 91, 105);
   rect(220, 350, 200, 200, 60);
   
   fill(253);
   textSize(30);
   text("reiniciar", 260, 390);
  }
}
  
void mousePressed() {
  if (pantalla == 0 && mouseX > 220 &&
 mouseX < 420 && mouseY > 350 && mouseY <
 410) {
   inicio = true;
   pantalla = 1;
   tiempo = millis();
 }
 
 if (pantalla == 7 && mouseX > 220 &&
mouseX < 420 && mouseY > 350 && mouseY <
410) {
    inicio = false;
    pantalla = 0;
    tiempo = millis();
  }
} 
