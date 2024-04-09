abstract class Circle extends Shape {
  //Global Variables
  //
  Circle (float x, float y, float w, float h, color c) {
  super(x,y,w,h,c);
  }// end Circle
  //
  //method
  void draw() {
  fill(c);
  ellipse(x,y,w,h);
  fill(rd);
  } // end draw
  //
 abstract color nightModeColour() {
  color nm = 0;
return nm;
  }// end nightModeColour
  //
} //end circle
