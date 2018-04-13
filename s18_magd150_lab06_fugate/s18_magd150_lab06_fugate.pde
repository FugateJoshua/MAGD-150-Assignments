weather seasonWeather;

void setup(){
  size(1000,600);
  seasonWeather=new weather();
  /*slows the process down so the weather effects are
  visible and having less of a spasm*/
  frameRate(15);
}

void draw(){
  spring();
  summer();
  fall();
  winter();
  seasonWeather.display();
}

//each of the four functions separate the events of each season

void spring(){
  noStroke();
  fill(0,100,150);
  rect(0,0,250,600);
  fill(0,200,0);
  rect(0,500,250,100);
}

void summer(){
  noStroke();
  fill(0,200,250);
  rect(250,0,250,600);
  fill(0,255,0);
  rect(250,500,250,100);
  fill(255,255,0);
  ellipse(400,100,100,100);
}

void fall(){
  noStroke();
  fill(0,150,200);
  rect(500,0,250,600);
  fill(200,75,0);
  rect(500,500,250,100);
}

void winter(){
  noStroke();
  fill(0,50,100);
  rect(750,0,250,600);
  fill(250);
  rect(750,500,250,100);
}