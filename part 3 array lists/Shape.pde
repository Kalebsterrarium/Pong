abstract class Shape {
//global variables 
float x,y,w,h;
float el;//left bounce edge,xpixel
float erl;//right bounce edge,x-pixel
float plt;//left top paddle y-pixel
float plb;//left  bottom paddle y-pixel
float prt;// right top paddle y-pixel
float prb;//right bottom paddle y-pixel
boolean s; // ball stops moving, set in ball class only

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
abstract void updateSetup( float variable1, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 );
  //
} //End Shape
//
} //end Shape
