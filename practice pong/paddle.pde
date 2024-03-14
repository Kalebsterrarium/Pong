class paddle {
//
//global variables
float tablex,tabley,tablewidth,tableheight;
float netx, nety, netwidth, netheight;
float paddlex,paddley,paddlewidth,paddleheight,paddlestartheight,paddletraveldistance;
color paddlecolour;
boolean up=false,down=false;
//
//overloaded contructor
//purpose: left and right paddles
paddle(float paddlestartparameter, float ballDiameterParameter) {
  netwidth = ballDiameterParameter * 3;
  paddlewidth= ballDiameterParameter * 1/3;
  tabley=displayHeight/10;
  tableheight= displayHeight * 8/10;
  if (paddlestartparameter == 0) netx = paddlestartparameter;
  if (paddlestartparameter == displayWidth) netx = paddlestartparameter - netwidth*2 - paddlewidth;
  this.paddlex=netx+ netwidth;
  if (paddlestartparameter == displayWidth) netx = paddlestartparameter - netwidth;
  
    this.paddlestartheight=0.2;//if easter egg number must be tracked 

  this.paddleheight=tableheight* paddlestartheight;
  this.paddley= tabley + (tableheight/2) - (paddleheight/2);
  paddlecolour = #000000;
 this.paddletraveldistance = 8;//speed of paddle
  
  
  
  
}
//
void draw() {
  noStroke();
fill(paddlecolour);
paddles();
fill(0);
if(up == true) movepaddleup();
 if(down == true) movepaddledown() ;

















}//end draw
//
//voids and return
void paddles() {

rect(paddlex,paddley,paddlewidth,paddleheight);
//rect();


}//end paddles
void movepaddledown() {
  paddley+= paddletraveldistance;// moves paddle down
  if(paddley > tabley+tableheight-paddleheight) paddley = tabley+tableheight-paddleheight;
  //down = false;
}
void movepaddleup() {
  paddley-= paddletraveldistance;// moves paddle up
  if(paddley < tabley) paddley = tabley;
  //up =false;
}
//
void keypressedWASD() {
  if (key == 'w' | key=='W') mypaddle.up = true ;
  if(key=='s' | key=='S') mypaddle.down = true;
}

void keypressedARROW() {
  if(key==CODED & keyCode==UP) yourpaddle.up = true;
  if(key==CODED & keyCode==DOWN) yourpaddle.down =true;
}

void keyreleasedWASD() {
  if (key == 'w' | key=='W') mypaddle.up = false ;
  if(key=='s' | key=='S') mypaddle.down = false;
}

void keyreleasedARROW() {
  if(key==CODED & keyCode==UP) yourpaddle.up = false;
  if(key==CODED & keyCode==DOWN) yourpaddle.down =false;
}
}//end paddle
 
