abstract class Shape {
//global variables 
float x,y,w,h;
color c , rd; // shape colour
//
//constructor
Shape(float x, float y, float w, float h, color c) { 
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  this.c = c;
  rd = nightModeColour();
} //end constructor
//
//methods
void draw() {} // end draw()
//
color nightModeColour() {
  color nm = 0;
return nm;
} //end nightModeColour
//
} //end Shape
