class paddle {
//
//global variables
float tablex,tabley,tablewidth,tableheight;
float netx, nety, netwidth, netheight;
float paddlex,paddley,paddlewidth,paddleheight,paddlestartheight,paddletraveldistance;
color paddlecolour;
boolean up=false,down=false;
float paddlespaceing;
//
//overloaded contructor
//purpose: left and right paddles
paddle(float paddlestartparameter, float ballDiameterParameter) {
  tablewidth=displayWidth;
  netwidth = ballDiameterParameter * 3;
   tableheight= displayHeight * 1/10;
  paddlewidth= ballDiameterParameter * 1/3;
  tabley=(paddlestartparameter == 0 ) ? 0 : displayHeight - tableheight;

  if (paddlestartparameter == 0) netx = paddlestartparameter;
  if (paddlestartparameter == displayWidth) netx = paddlestartparameter - netwidth*2 - paddlewidth -30;
  this.paddlex=netx+ netwidth +15 ;
  if (paddlestartparameter == displayWidth) netx = paddlestartparameter - netwidth;
  
    this.paddlestartheight=1.6;//if easter egg number must be tracked 

  this.paddleheight=tableheight* paddlestartheight;
  this.paddley= displayHeight*1/2 - paddleheight*1/2;
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
 fill(#FF0000);
rect(tablex,tabley,tablewidth,tableheight);
fill(0);















}//end draw
//
//voids and return
void paddles() {

rect(paddlex,paddley,paddlewidth,paddleheight);
//rect();


}//end paddles
void movepaddledown() {
  paddley+= paddletraveldistance;// moves paddle down
  if(paddley + paddleheight> displayHeight - tableheight) paddley = displayHeight - tableheight - paddleheight;
  //down = false;
}
void movepaddleup() {
  paddley-= paddletraveldistance;// moves paddle up
  if(paddley  <  tableheight) paddley = tableheight ;
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
 
