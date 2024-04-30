abstract class PongTable extends Rectangle {
  
  PongTable(float x , float y , float w , float h , color c) {
    super(x,y,w,h,c);
  }//end pongtable
  
  abstract void draw();
}// end pongtable class
