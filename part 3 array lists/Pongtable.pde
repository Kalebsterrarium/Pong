abstract class PongTable extends Rectangle {
  
   float leftnetx_top, leftnety_top, leftnetx_bottom, leftnety_bottom;
  float rightnetx_top, rightnety_top, rightnetx_bottom, rightnety_bottom;
  float middlepongtablex, middlepongtabley_top, middlepongtabley_bottom;
  
  PongTable(float x , float y , float w , float h , color c) {
    super(x,y,w,h,c);
  }//end pongtable
  
   void draw() {
    
    fill(c);
    rect(x, y, w, h); //Pong Table
    //fill(resetDefault);
    //Reset the Defaults
    //
    stroke(255);
    //strokeWeight();
    line(leftnetx_top, leftnety_top, leftnetx_bottom, leftnety_bottom);
    line(rightnetx_top, rightnety_top, rightnetx_bottom, rightnety_bottom);
    line(middlepongtablex, middlepongtabley_top, middlepongtablex, middlepongtabley_bottom);
    noStroke();
    //Right Net
    //
   }//end draw
  //
   color nightModeColour() {
    color nm = 0;
    return nm;
  }// end nightModeColour
  //
   void updateSetup( float netwidth, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 ) {
    leftnetx_top = x+netwidth;
    leftnety_top = y;
    leftnetx_bottom = leftnetx_top;
    leftnety_bottom = leftnety_top+h;
    rightnetx_top = w-netwidth;
    rightnety_top = leftnety_top;
    rightnetx_bottom = rightnetx_top;
    rightnety_bottom = leftnety_bottom;
    middlepongtablex = ( ( rightnetx_top - leftnetx_top ) / 2 ) + netwidth; //Used in Paddle Constructor to create left or right Paddle
    middlepongtabley_top = leftnety_top;
    middlepongtabley_bottom = leftnety_bottom;
  } //Ball Diameter Update
  //
}// end pongtable class
