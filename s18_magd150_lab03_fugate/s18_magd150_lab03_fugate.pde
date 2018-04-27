int red;
int green;
int blue;

float w = 10;
float h = 6.5;


void setup(){
  size(1000,650);
  background(0);
  frameRate(120);
}

void draw(){
  red = (red + 3) % 256;
  green = (green + 0) % 256;
  blue = (blue + 5) % 256;
  fill(red, green, blue);
  
  w = (w + (2*2)) % (height / 0.75);
  h = (h + (3-1)) % (height / 0.75);
  
  rectMode(CENTER);
  rect(500,325,w,h);
  
  print("original size = windowSize / 100");
  print("width = ");
  print(1000/100);
  print("height = ");
  print(650/100);
}