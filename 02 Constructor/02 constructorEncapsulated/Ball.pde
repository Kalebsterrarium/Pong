class Ball
{
  //Global Variables
  float ballx,bally,balldiameter;
  color ballcolour;
  float xspeed,yspeed;
  float xdirection, ydirection;
  //
  //constructor
  Ball () {
     //constructor is ... hard coded, single variable object
     //local variables,deleted at end of constructor
     int startx = displayWidth*1/2;
     int starty = displayHeight*1/2;
     int referencemeasure = (displayWidth < displayHeight) ? displayWidth : displayHeight ;
     
      ballx = startx*1/2; //spawn myBall in the middle of the screen
  bally = starty*1/2;
  balldiameter = referencemeasure*1/30;
  ballcolour = color(random(0,255),random(255),random(255));
  xspeed= xdirection();
  yspeed= ydirection();
  xdirection= -1;
  ydirection= -1;//hard code will change
  }//end constructor
  //
  void draw() { //ball
  noStroke();
   fill(ballcolour);//CAUTION: must reset defaults
   ellipse(ballx,bally,balldiameter,balldiameter);
   fill(0);
  stroke(1);
   step();
   
  }//end draw
  void step() {
     bounce();
    ballx += xspeed;
    bally += yspeed;
  }//end step
  void bounce() {
    if ( ballx < 0+(balldiameter*1/2) || ballx > displayWidth-(balldiameter*1/2)) {
      xspeed *=xdirection;
    }
   if (bally < 0+(balldiameter*1/2) || bally > displayHeight-(balldiameter*1/2)) {
     yspeed *=ydirection;
    } 
  }//end bounce
  float xdirection() {  
   float xdirection = int(random(10));//hard code will change
    
return xdirection  ;
  }
  float ydirection() {  
   float ydirection = int(random(10));//hard code will change
   
return ydirection  ;
  }
}//End Ball
//
  
 
 
  
