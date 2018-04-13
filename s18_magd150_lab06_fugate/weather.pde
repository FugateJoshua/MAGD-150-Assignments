class weather{
  int rainX, leafX, snowX, posY;
  color r, l, s;
  
  weather(){

  }
  
  void display(){
    //randomizes the position of the rain/leaves/snow, simulating wind
    rainX = round(random(250));
    leafX = round(random(550,700));
    snowX = round(random(750,1000));
    posY = round(random(500));
    /*randomizes the color of the rain/leaves/snow
    helps to show the leaves having different colors in fall,
    as well as make the rain and snow not seem bland*/
    r = round(random(100,255));
    l = round(random(255));
    s = round(random(200,255));
    strokeWeight(1);
    stroke(0,0,r);
    line(rainX,posY,rainX+2.5,posY+10);
    noStroke();
    fill(255,l,0);
    ellipse(leafX,posY,50,10);
    fill(s);
    rect(snowX,posY,10,10);
  }
}