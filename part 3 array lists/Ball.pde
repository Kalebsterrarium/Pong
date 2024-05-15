class Balls extends Circle {
  //Global Variables
   float pongtableleft, pongtableright, pongtabletopy, pongtablebottomy, pongtablex_middle;
  float leftpaddletop, leftpaddlebottom, rightpaddletop, rightpaddlebottom;
  float xspeed,yspeed,xacceleration,yacceleration;
  //
  Balls(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //end Ball
  //
  //methods
  //
  void draw() {
    fill(c);
    ellipse(x,y,w,h);
    fill(rd);
    if ( s==false && ( x>el && x<er ) ) { 
      move(); 
    } else if ( x<=el ) { 
      x = pongtableleft+w;
      s=true;
    } else if ( x>=er ) {
      x = pongtableright-w; 
      s=true;
    }
  }//end draw
  //
  color nightModeColour() {
    color nm = 0;
    return nm;
  }// end nightModeColour
  //
  void updateSetup( float leftparameter, float rightparameter, float topparameter, float bottomparameter, float middleparameter, float leftpaddleedge, float rightpaddleedge, float leftpaddletopparameter,float leftpaddlebottomparameter, float rightpaddletopparameter, float rightpaddlebottomparameter) {
    
    
     pongtableleft = leftparameter;
    pongtableright = rightparameter;
    pongtabletopy = topparameter;
    pongtablebottomy = bottomparameter;
    pongtablex_middle = middleparameter;
    el = leftpaddleedge; 
    er = rightpaddleedge; 
    s = false;
    paddleUpdate(leftpaddletopparameter, leftpaddlebottomparameter, rightpaddletopparameter, rightpaddlebottomparameter); 
    
    
    
    //ball movement 
    xspeed= xdirection();
    yspeed= ydirection();
    //
    xacceleration=1;
    yacceleration=1;
  }//end updatesetup
  //
  void paddleUpdate( float leftpaddletopparameter, float leftpaddlebottomparameter, float rightpaddletopparameter, float rightpaddlebottomparameter ) {
    leftpaddletop = leftpaddletopparameter;
    leftpaddlebottom = leftpaddlebottomparameter;
    rightpaddletop = rightpaddletopparameter;
    rightpaddlebottom = rightpaddlebottomparameter;
  } //End Paddle Update
  //
  float xdirection() {
    float xdirection = int(random(-9,9));
     if ( xdirection == 0) xdirection = int(random(-9,9));
   if ( xdirection < 5 && xdirection > 0) {
     while(xdirection < 5) {
    xdirection = int(random(-9,9));
    
     }
   } else if (xdirection > -5 && xdirection < 0 ) {
      while(xdirection > -5) {
    xdirection = int(random(-9,9));
     }
   }
   return xdirection();
  }//end xdirection
  //
  float ydirection() {
     float ydirection = int(random(-9,9));
     if ( ydirection == 0) ydirection = int(random(-9,9));
   if ( ydirection < 5 && ydirection > 0) {
     while(ydirection < 5) {
    ydirection = int(random(-9,9));
    
     }
   } else if (ydirection > -5 && ydirection < 0 ) {
      while(ydirection > -5) {
    ydirection = int(random(-9,9));
     }
   }
   return ydirection();
  }//end ydirection
  //
  void move() {
    bounce();
    x+=xspeed*xacceleration;
    y+=yspeed*yacceleration;
  } //end Move Ball
  //
  void bounce() {
    if ( y < pongtabletopy+(w*1/2) || y > pongtablebottomy-(w*1/2) ) yspeed *= -1;
    //
    //Left Paddle, with search (Shortcut Evaluation
    if (x < pongtablex_middle*1/2 && x < el+(w*1/2) ) {
      if ( y > leftpaddletop && y < leftpaddlebottom ) xspeed *= -1;
    }
    //Right Paddle, with search
    if (x > pongtablex_middle*3/2 && x > er-(w*1/2)) {
      if ( y > rightpaddletop && y < rightpaddlebottom ) xspeed *= -1;
    }
  }//end bounce
  //
} //end balls
