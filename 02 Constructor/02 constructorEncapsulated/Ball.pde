class Ball
{
  //Global Variables
  float ballx,bally,balldiameter;
  color ballcolour;
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
  balldiameter = referencemeasure*1/60;
  ballcolour = color(random(0,255),random(255),random(255));
  }//end constructor
  //
  void draw() { //ball
   fill(ballcolour);//CAUTION: must reset defaults
   ellipse(ballx,bally,balldiameter,balldiameter);
   fill(0);
  }//end draw
} //End Ball
//
  
 
 
  
