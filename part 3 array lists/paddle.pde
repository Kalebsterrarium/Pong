class Paddles extends Rectangle {
  //global variables 
  float pongTablemiddle;
  //
  Paddles (float x, float y, float w, float h, color c) {
    super(x,y,w,h,c);
  }//end Paddles
  
  
  void draw() {
    
     fill(c);
    if ( x < pongTablemiddle ) {
      rect( x, plt, w, h); 
    } else {
      rect( x, prt, w, h); 
    }
  }//end draw
  
  
  color nightModeColour() {
  color nm=0;
  return nm;
  }
  
 void updateSetup( float pongTableMiddleParameter, float xNetValue, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 ) {
    pongTablemiddle = pongTableMiddleParameter;
    if ( x < pongTableMiddleParameter ) { //NOTE: var==NULL, IF == false
      el += xNetValue+w;
    } else {
      x -= w;
      er += xNetValue-w;
    }
    //  prt prb
    if ( x < pongTableMiddleParameter ) {
      plt = y;
      plb = y+h;
      //Note: h = difference of plt & plb
    } else {
      prt = y;
      prb = y+h;
    }
  } //End Paddle X Update
  
  
}//end paddle class
