import processing.pdf.*;

PImage img;
PFont comicSans;
PFont papyrus;
boolean memeFonts;
boolean recordScreen;
String fileName;
String niceMeme = "nicememe.txt";
String whenTho = "whentho.txt";
String[] lines;
String[] moreLines;

void setup(){
  size(550,650);
  
  //This loads the image from the data folder
  img = loadImage("thonk.png");
  
  //This loads the fonts from the data folder
  comicSans = createFont("comicbd.ttf",48,true);
  papyrus = createFont("PAPYRUS.TTF",48,true);
  
  //This loads strings from text files in the data folder
  lines = loadStrings(niceMeme);
  moreLines = loadStrings(whenTho);
  
  //This gives a name to the .pdf file
  fileName = "thonk_poster";
}

void draw(){
  if (recordScreen) {
    beginRecord(PDF, fileName + ".pdf");
  }
  background(0);
  if (memeFonts){
    textFont(papyrus);
  }else{
    textFont(comicSans);
  }
  imageMode(CENTER);
  image(img,275,350,300,248);
  textAlign(CENTER,TOP);
  textSize(56);
  text("thonk",width/2,height/8);
  textAlign(CENTER,CENTER);
  textSize(16);
  text("the move", width/2,height/4);
  textSize(24);
  text(lines[0],width/2,25);
  text(moreLines[0],width/2,600);
  if (recordScreen) {
    endRecord();
    recordScreen = false;
  }
}
void mousePressed(){
  //Changes font upon left-clicking
  if (mouseButton == LEFT){
    memeFonts = !memeFonts;
  }
  //Saves the display as a .pdf upon right-clicking
  if (mouseButton == RIGHT) {
    recordScreen = true;
  }
}
