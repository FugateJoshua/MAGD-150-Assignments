int posX,posY;
color c;
boolean power=false;
boolean inputColor=true;
boolean input=false;

void setup(){
  size(1000,650);
  background(100);
}

void draw(){
  textSize(12);
  rectMode(CORNER);
  fill(25);
  strokeWeight(1);
  rect(850,500,125,200);
  rectMode(CENTER);
  fill(50);
  strokeWeight(7);
  rect(500,325,500,250);
  fill(150,0,0);
  strokeWeight(1);
  rect(880,510,50,10);
  fill(255);
  text("POWER",860,515);
  fill(10);
  rect(943,510,50,10);
  fill(255);
  text("INPUT",927,515);
  ellipseMode(CENTER);
  fill(10);
  ellipse(915,575,50,50);
  fill(255);
  text("COLOR",895,580);
  
  fill(255,127,277);
  
  if(mousePressed){
    if((power == true) && (mouseX>855 && mouseX<905 && mouseY>505 && mouseY<515)){
      power=false;
    }else{
      if(mouseX>855 && mouseX<905 && mouseY>505 && mouseY<515){
      power=true;
    }
    }
    if((input==true) && (mouseX>918 && mouseX<968 && mouseY>505 && mouseY<515)){
      input=false;
    }else{
      if(mouseX>918 && mouseX<968 && mouseY>505 && mouseY<515){
        input=true;
      }
    }
    if((inputColor==false) && (mouseX>890 && mouseX<940 && mouseY>550 && mouseY<600)){
      inputColor=true;
    }else{
      inputColor=false;
    }
  }
  
  if(power==true && input==false){
    fill(150);
    strokeWeight(7);
    rect(500,325,500,250);
    for(int i = 0; i < 2500; i++){
      randomizePos();
      colorize();
      displayPoint();
    }
    fill(0,200,0);
    textSize(32);
    text("CH 3",270,235);
  }
  
  if(power==true && input==true){
    fill(0,200,250);
    strokeWeight(7);
    rect(500,325,500,250);
    fill(0,200,0);
    textSize(32);
    text("INPUT",270,235);
    strokeWeight(1);
    rect(500,415,495,65);
    fill(255);
    ellipse(600,250,50,25);
    ellipse(400,275,50,25);
  }
  
  if(power==true && input==true && inputColor==false){
    fill(225);
    strokeWeight(7);
    rect(500,325,500,250);
    fill(0,200,0);
    textSize(32);
    text("INPUT",270,235);
    strokeWeight(1);
    fill(200);
    rect(500,415,495,65);
    fill(255);
    ellipse(600,250,50,25);
    ellipse(400,275,50,25);
  }
}

void randomizePos(){
  posX=round(random(250,750));
  posY=round(random(200,450));
}

void colorize(){
  c=round(random(255));
}

void displayPoint(){
  strokeWeight(2);
  fill(c);
  point(posX,posY);
}