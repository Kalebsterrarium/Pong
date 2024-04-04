class squares extends shapes {
  //global variables
  float squarex,squarey,squarewidth,squareheight;
  //
  squares() {
    this.squarex = 0;
    this.squarey= screentop * 1/12;
    this.squarewidth = screenleft;
    this.squareheight = screentop * 10/12;
  }//end squares-pongtable
  
  void draw() {
    rect(squarex,squarey,squarewidth,squareheight );
  }//end draw
}//end squares class
