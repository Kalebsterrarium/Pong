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
abstract void draw(); // empty draw()
//
abstract color nightModeColour(); //end nightModeColour
//
} //end Shape
