int appWidth, appHeight;
Boolean displaycheck = false;
//
void display() {
  //display orientation: landscape, not portrait nor square (sort of)
  println(width,height,displayWidth,displayHeight);
  appWidth =width ;
  appHeight = height;
  println(displaycheck);
  displaycheck = (appWidth >= appHeight) ? false : true ;
  println(displaycheck);
}//end display method
//
void displayLandscape() { //display error check in draw()
  println("Game on");
}//end display Landscape error check
