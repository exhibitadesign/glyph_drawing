//glyph drawing sketch

//line point vars
float x1=400;
float y1=400;
float x2=400;
float y2=400;
//vrs control directions of lines
float ranX=0;
float ranY=0;
//var controls size of line
float scale=30;
//var controls number of steps in glyph drawing
float count=0;
//var for dia of ellipse
float wid=7;

void setup(){
  size(800,800);
  colorMode(HSB);
  background(0);
  frameRate(10);
}

void draw(){
  count++;
  strokeWeight(1);
  stroke(150,100,255);
  strokeCap(ROUND);
  noFill();
  line(x1,y1,x2,y2);
  x1=x2;
  y1=y2;
  ranX=(int(random(-2,2))*scale);
  ranY=(int(random(-2,2))*scale);
  x2=x2+ranX;
  y2=y2+ranY;
  fill(255);
 if(ranX<=-1){
   ellipse(x1,y1,wid,wid);
 }
 
 if(count>=50){
   count=0;
   x1=width/2;
   y1=width/2;
   x2=width/2;
   y2=width/2;
   background(0);
 }
}
