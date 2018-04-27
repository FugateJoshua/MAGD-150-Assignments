import processing.sound.*;
import processing.video.*;

PImage birb;
PImage play1;
PImage play2;

boolean playMovie = false;
boolean playSound = false;

Movie movie;
SoundFile sound;

void setup(){
  size(800,600);
  //lines 17 through 21 load image, video, and sound files to the project
  birb = loadImage("birb.jpg");
  play1 = loadImage("play1.png");
  play2 = loadImage("play2.png");
  movie = new Movie(this, "smesh.mp4");
  sound = new SoundFile(this, "screm.mp3");
  movie.stop();
  sound.stop();
}
//required for the movie to visibly show up in the project
void movieEvent(Movie movie){
  movie.read();
}
//this lets you start and stop the audio/video with buttons
void mousePressed(){
  if((playMovie == true)&&(mouseX>280 && mouseX<370 && mouseY>455 && mouseY<545)){
    playMovie=false;
  }else{
    if(mouseX>280 && mouseX<370 && mouseY>455 && mouseY<545){
    playMovie = true;
  }
  }
  if((playSound == true)&&(mouseX>405 && mouseX<495 && mouseY>55 && mouseY<145)){
    playSound=false;
  }else{
    if(mouseX>405 && mouseX<495 && mouseY>55 && mouseY<145){
    playSound = true;
  }
  }
  if(playSound==true){
    sound.play();
  }else{
    sound.stop();
  }
}


void draw(){
  background(50);
  rectMode(CENTER);
  fill(0);
  rect(600,500,400,200);
  imageMode(CENTER);
  image(movie,600,500);
  image(birb,188,105,375,210.75);
  image(play2,450,100,90,90);
  image(play1,325,500,90,90);
  //this plays the movie if playMovie is set to true (see line 29)
  if(playMovie==true){
    movie.play();
  }else{
    movie.pause();
  }
  fill(255);
  textSize(32);
  text("birbs: a documentary", 300,300);
  textSize(16);
  text("click this to hear what birbs sound like",450,50);
  text("click this to see the birb mating call",50,450);
}
