
PImage foto; 

void setup(){
  size(400,400);
  background(0,0,500,200);

  foto = loadImage("http://www.sabiask.com/images/Image/perro.jpg"); 

  noStroke();

  frameRate(30);
}

void draw(){


  int salto = 4;

  color theColor;

  for(int i=0; i<width; i+=salto){
    for(int j=0; j<height; j+=salto){

      theColor = foto.get(i,j);

      fill(theColor);

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

