PImage fondoImg =loadImage("http://www.futbolbaseenestadopuro.com/wp-content/uploads/2013/05/11603474-hierba-verde-natural-de-un-campo-de-futbol-soccer.jpg"); 
PImage MessiImg =loadImage("http://i.imgur.com/hG9aUCi.png"); 
PImage paredImg =loadImage("https://i.imgur.com/LUQCYsB.png"); 
PImage startImg=loadImage("http://static.wixstatic.com/media/172f7f_bd4a8abcba9b4892982738678a29c849.jpg"); 

int estadojuego = 1; 
int puntuacion = 0, maxima = 0; 
int x = -200, y, vy = 0; 

int wx[] = new int[2], wy[] = new int[2];


void setup() {
  size(600, 700); 
  fill(0);
  textSize(40);
}







void draw() {  
  if (estadojuego == 0) { 

    imageMode(CORNER);
    image(fondoImg, x, 0);
    image(fondoImg, x+fondoImg.width, 0); 
    x -= 6;
    vy += 1;
    y += vy;
    if (x == -1800) x = 0;

    for (int i = 0; i < 2; i++) {
      imageMode(CENTER);
      image(paredImg, wx[i], wy[i] - (paredImg.height/2+100));
      image(paredImg, wx[i], wy[i] + (paredImg.height/2+100));
      if (wx[i] < 0) {
        wy[i] = (int)random(200, height-200);
        wx[i] = width;
      }
      if (wx[i] == width/2) { 
        puntuacion++; 
        maxima = max(puntuacion, maxima);
      }
      if (y>height||y<0||(abs(width/2-wx[i])<25 && abs(y-wy[i])>100)) {

        estadojuego=1;
      }
      wx[i] -= 6;
    }


    image(MessiImg, width/2, y); 
    text(""+puntuacion, width/2-15, 100);
  } else { 

    imageMode(CENTER);
    image(startImg, width/2, height/2);
    text("Máxima puntuación: "+maxima, 125, 475);
    text("Click para empezar", 150, 175);
  
  }
}




void mousePressed() { 
  vy = -17; 
  if (estadojuego==1) { 

    wx[0] = 600;
    wy[0] = y = height/2;
    wx[1] = 900;
    wy[1] = 500;
    x = estadojuego = puntuacion = 0;
  }
}




