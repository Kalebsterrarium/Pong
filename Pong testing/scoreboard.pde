class scoreboard extends shapes {
  PFont font;
  String score = "0";
  float scorex,scorey,scorewidth,scoreheight;
  scoreboard(float scoreboardstartparameter) {
     scorewidth = displayWidth*1/11;
    scorex = (scoreboardstartparameter == 0) ? centerx - scorewidth*2 : centerx + scorewidth ;
    scorey = 0;
    scoreheight= (displayHeight - pongtable.squareheight)/2;
   
    font = createFont("Calibri",20);
  }//end scoreboard
  
  void draw() {
    textAlign(CENTER,CENTER);
    textFont(font,displayHeight);
    textSize(40);
    fill(#FF0000);
    text(score,scorex,scorey,scorewidth,scoreheight);
    fill(0);
    
  }//end draw
 void score() {
   
  }//end score 
}//end scoreboard class
