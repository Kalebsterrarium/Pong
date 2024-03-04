class Ball
{
  //Global Variables
  float ballx,bally,balldiameter;
  color ballcolour;
  float xspeed,yspeed;
  float xdirection, ydirection;
   float gravity=0.0;
  //
  //constructor
  Ball () {
     //constructor is ... hard coded, single variable object
     //local variables,deleted at end of constructor
     int startx = displayWidth*1/2;
     int starty = displayHeight*1/2;
     int referencemeasure = (displayWidth < displayHeight) ? displayWidth : displayHeight ;
     
      this.ballx = (startx); //spawn myBall in the middle of the screen
 this.bally = (starty);
  this.balldiameter = referencemeasure*1/30;
  this.ballcolour = color(random(0,255),random(255),random(255));
  this.xspeed= xdirection();
  this.yspeed= ydirection();
  }//end constructor
  //
    Ball (float ballx, float bally, float gravityParameter) {
    //Ball(); //Place Holder
    this.ballx = ballx; //ERROR: trigger when the Ball enters goal area
    this.bally = bally; //ERROR: trigger when the Ball enters goal area
    this.ballcolour = color ( random(0, 255), random(255), random(255) ) ; //random(), random()-shortcut, casting from float to intin color var
    this.balldiameter = random(width*1/25);
    this.xspeed = random(-8, 8);
    this.yspeed = random(-8, 8);
    this.gravity = gravityParameter;
  } //End Firework Ball
  Ball (float ballx, float bally, color ghostcolor) {
    int referencemeasure = (displayWidth < displayHeight) ? displayWidth : displayHeight ;
    //Ball(); //Place Holder
    this.ballx = ballx; //ERROR: trigger when the Ball enters goal area
    this.bally = bally; //ERROR: trigger when the Ball enters goal area
    this.ballcolour = ghostcolor; //random(), random()-shortcut, casting from float to intin color var
    this.balldiameter =referencemeasure*1/30;
    this.xspeed = myBall.xspeed;
    this.yspeed = myBall.yspeed*-1;
   
  } //End Firework Ball
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
     yspeed += gravity;
    ballx += xspeed;
    bally += yspeed;
  }//end step
  void bounce() {
    if ( ballx < 0+(balldiameter*1/2) || ballx > displayWidth-(balldiameter*1/2)) {
      xspeed *=-1;
       
 
    }
   if (bally < 0+(balldiameter*1/2) || bally > displayHeight-(balldiameter*1/2)) {
     yspeed *=-1 ;
     
 
    } 
  }//end bounce
  float xdirection() {  
    float xdirection = int (random (-10, 10) ); //float, truncated, must be 2 minimum
    while ( xdirection == 0 ) {
      xdirection = int (random (-10, 10) ); //variable must be populated first
    }
    return xdirection;
  }
  float ydirection() {  
   float ydirection = int (random (-10, 10) ); //float, truncated, must be 2 minimum
    while ( ydirection == 0 ) {
      ydirection = int (random (-10, 10) ); //variable must be populated first
    }
    return ydirection;
  }
}//End Ball
//
  
 
 
  
