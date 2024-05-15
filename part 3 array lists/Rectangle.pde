abstract class Rectangle extends Shape {
  
  Rectangle(float x , float y , float w , float h , color c) {
    super(x,y,w,h,c);
  }//end rectangle
  
  abstract void draw();
  //
   abstract color nightModeColour();
  //
  abstract void updateSetup( float variable1, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 );
  //
}// end rectangle class
