//global variables
ball pongball;
ball[] fireworks = new ball[10];
squares pongtable;
net[] playernets = new net[2];
paddle[] playerpaddles = new paddle[2];
boolean up[] = new boolean[2];
boolean down[] = new boolean[2];

//
void setup() {
 
  fullScreen();
 
  pongtable = new squares();
pongball = new ball();
for ( int i =0;i< fireworks.length;i++) {
  fireworks[i] = new ball(0.981, 0,0);
}
  for ( int i=0;i<playernets.length;i++) {
    
   playernets[i] = new net(i);
   
  }
  for ( int i=0;i<playerpaddles.length;i++) {
    
   playerpaddles[i] = new paddle(i);
   
  }
}//end setup
//
void draw() {
  background(#000000);
  pongtable.draw();
  for ( int i=0;i<playerpaddles.length;i++) {
   playerpaddles[i].draw();
  }
  for ( int i=0;i<playernets.length;i++) {
   playernets[i].draw();
  }
  
 pongball.draw();

 /*
  for ( int i =0;i< fireworks.length;i++) {
  fireworks[i].draw();
}
*/

}//end draw
//
void mousePressed() {
  
}//end mousepressed
//
void keyPressed() {
  if ( key == 'w' || key == 'W') up[0] = true; 
  if ( key == 's' || key == 'S') down[0] = true;
  if ( key==CODED & keyCode==UP) up[1] = true; 
  if ( key==CODED & keyCode==DOWN) down[1] = true;


}//end keypressed

void keyReleased() {
  if ( key == 'w' || key == 'W') up[0] = false; 
  if ( key == 's' || key == 'S') down[0] = false;
  if ( key==CODED & keyCode==UP) up[1] = false; 
  if ( key==CODED & keyCode==DOWN) down[1] = false;
}
//
//end driver
