/*
joan soler-adillon
 www.joan.cat
 MÃ ster d'Arts Digitals, curs 2007-08
 */
 /* @pjs preload="ramon.jpg"; */
//Creamos un objeto PImage, de nombre foto
PImage foto; 

void setup(){
  size(400,400);
  background(0,0,500,200);
  //cargamos un archivo de imÃ¡gen en afoto
  foto = loadImage("http://www.sabiask.com/images/Image/perro.jpg"); 
  //la dibujamos una sola vez  
  //image(foto, 0,0); 
  //desactivamos el contorno
  noStroke();
  //limitamos el FR para no colapsar processing
  frameRate(30);
}

void draw(){
  //background(0);

  int salto = 4;
  //Declaramos una variable del tipo de datos color (un objeto color, para ser estrictos)
  color theColor;
    //realizamos un doble loop para recorrer los pÃ­xels:
  for(int i=0; i<width; i+=salto){
    for(int j=0; j<height; j+=salto){
      //y asignamos a theColor, con foto.get(), el color EN LA FOTO del punto donde estamos
      theColor = foto.get(i,j);
      //preparamos el fill()
      fill(theColor);
      //y dibujamos un rect en el punto en que estamos
      //del color sobre el que estamos en la foto
      //con un random para hacerlo saltar
      //(sin random seria: rect(i,j,salto,salto);
      rect(i+random(-salto,salto),j+random(-salto,salto),salto,salto);
    }
  }
  
  if(mousePressed){
    foto = loadImage("http://thumbs.dreamstime.com/x/gato-blanco-y-negro-5-meses-17953020.jpg"); 
  }
  
  
if (keyPressed) {
    if (key == '1') {
     foto = loadImage("http://thumbs.dreamstime.com/x/gato-blanco-y-negro-5-meses-17953020.jpg"); 
    }
    else if(key == '2'){
      foto = loadImage("http://mlu-s1-p.mlstatic.com/13596-MLU3347770346_112012-C.jpg"); 
    }
    else if(key == '3'){
      foto = loadImage("http://www.sabiask.com/images/Image/perro.jpg"); 
    }
    else if(key == '4'){
      foto = loadImage("http://www.animalparty.es/inicio/fotos/2cd683e_102elefante400.jpg"); 
    }
    else if(key == '5'){
      foto = loadImage("http://img.webme.com/pic/b/biosbardos/ardilla_coreana_asiatica1.jpg"); 
    }

}
  
  
}

