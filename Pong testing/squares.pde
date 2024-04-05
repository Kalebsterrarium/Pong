class squares extends shapes {
  //global variables
  float squarex,squarey,squarewidth,squareheight;
  //
  squares() {
    this.squarex = 0;
    this.squarey= screenbottom * 1/12;
    this.squarewidth = screenright;
    this.squareheight = screenbottom * 10/12;
  }//end squares-pongtable
  
  void draw() {
    fill(#FFFFFF);
    rect(squarex,squarey,squarewidth,squareheight );
    fill(0);
  }//end draw
}//end squares class
