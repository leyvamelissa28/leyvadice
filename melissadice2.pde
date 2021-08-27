//https://openprocessing.org/sketch/1108299
//https://openprocessing.org/sketch/1107310

//used set dice face sums
  int diceTotal;
  int diceTotal2;
  int diceTotal3;
  int diceTotal4;
  int diceTotal5;
  int diceTotal6;
  int chance;

//attempts at scoring more complicated stuff :(
  //int smallStraight;
  //int Yahtzee;

//used set dice size variable
  int diceSize = 117;

//was for dice # i didn't use, used pips instead  
  //int r = int(random(1,7));

//used set image
PImage img;

void setup() { 
textAlign(CENTER, CENTER);
textSize (40);
  size (900,600);
  frameRate(10);
 noLoop();
 img = loadImage("2087121.jpg");

 }
 
 
void draw(){
 //not entirely sure how works, but cool   
  dice(5,2);
}
void mousePressed() {
  loop();
}
void dice(int numDice, int numSides){
//re-sets automatic value for sums
  diceTotal = 0;
  diceTotal2 =0;
  diceTotal3=0;
  diceTotal4=0;
  diceTotal5=0;
  diceTotal6=0;
  chance=0;


background(255);
//allows for dice repeat (I think)
 for (int i = 1; i<numDice+1; i++){
  
  fill(0);
  textSize (10);
  textAlign(CENTER,BOTTOM);
text("YAHTZEE™ is trademarked by Hasbro", width/2, height);
  textSize (25);
  textAlign(RIGHT,BOTTOM);
text("Ones:", width/5, height/4*3-30);
text("Twoes:", width/5, height/4*3);
text("Threes:", width/5, height/4*3+30);
text("Fours:", width/5, height/4*3+60);
text("Fives:", width/5, height/4*3+90);
text("Sixes:", width/5, height/4*3+120);
text("Chance:", width/2, height/4*3+120);
//text("Small Straight:", width/2, height/4*3+90);
//text("Yahtzee:", width/2, height/4*3-30);
  
//tried to allow resize, didn't work well
//dice kept jumping back to size
  //surface.setTitle("LeyvaDice");
  //surface.setResizable(true);
  //surface.setLocation(100, 100);

 image(img, width/4+50, 50, 320,155.6);
 textAlign(CENTER);

//dice
  noStroke();
//shadows
  rectMode(CENTER);
  fill(#646060);
rect(i*150+15, height/2+20, diceSize, diceSize, diceSize/5);
 
 
//square
   //fill(#C10C0C);
  fill(#891919);
  rectMode(CENTER);
  rect(i*150, height/2, diceSize, diceSize, diceSize/5);
//Face
  ellipseMode(CENTER);
  //fill(#891919);
  fill(#C10C0C);
  ellipse(i*150, height/2, diceSize, diceSize);
//Hightlights
   strokeWeight(3);
   stroke(255);
   ellipseMode(CENTER);
   noFill();
   arc(i*150, height/2, diceSize, diceSize,QUARTER_PI, QUARTER_PI+.5);
   arc(i*150, height/2, diceSize, diceSize,4.5-.5, 4.5);
  
//dots
  fill(200);
  noStroke();
  int side = int(random(1, 7));
  chance += side;
  if (side == 1 || side == 3 || side == 5){
    fill(0);
    ellipse(i*150-1, height/2-1, diceSize/7+1, diceSize/7+1);
    fill(255);
    ellipse(i*150+1, height/2+1, diceSize/7, diceSize/7);
    fill(150);
    ellipse(i*150, height/2, diceSize/7, diceSize/7);

  }
  if (side == 2 || side == 3 || side == 4 || side == 5 || side == 6) { 
   //first dot & shadows
    fill(0);
    ellipse(-(diceSize/4) + i*150-1, height/2 - diceSize/4-1, diceSize/7+1, diceSize/7+1);
    fill(255);
    ellipse(-(diceSize/4) + i*150+1, height/2 - diceSize/4+1, diceSize/7, diceSize/7);
    fill(150);
    ellipse(-(diceSize/4) + i*150, height/2 - diceSize/4, diceSize/7, diceSize/7);
    //Second dot & shadows
    fill(0);
    ellipse((diceSize/4) + i*150-1, height/2 + diceSize/4-1, diceSize/7+1, diceSize/7+1);
    fill(255);
    ellipse((diceSize/4) + i*150+1, height/2 + diceSize/4+1, diceSize/7, diceSize/7);
    fill(150);
    ellipse((diceSize/4) + i*150, height/2 + diceSize/4, diceSize/7, diceSize/7);
  }
  if (side == 4 || side == 5 || side == 6) {
    //first dot & shadows
    fill(0);
    ellipse(-(diceSize/4) + i*150-1, height/2 + diceSize/4-1, diceSize/7+1, diceSize/7+1);
      fill(255);
    ellipse(-(diceSize/4) + i*150+1, height/2 + diceSize/4+1, diceSize/7, diceSize/7);
    fill(150);
    ellipse(-(diceSize/4) + i*150, height/2 + diceSize/4, diceSize/7, diceSize/7);
    //Second dot & shadows
    fill(0);
    ellipse((diceSize/4) + i*150-1, height/2 - diceSize/4-1, diceSize/7+1, diceSize/7+1);
    fill(255);
    ellipse((diceSize/4) + i*150+1, height/2 - diceSize/4+1, diceSize/7, diceSize/7);
    fill(150);
    ellipse((diceSize/4) + i*150, height/2 - diceSize/4, diceSize/7, diceSize/7);

}
  if (side == 6) {
    //first dot & shadows
    fill(0);  
    ellipse(i*150-1, height/2 - diceSize/4-1, diceSize/7+1, diceSize/7+1);
    fill(255);
    ellipse(i*150+1, height/2 - diceSize/4+1, diceSize/7, diceSize/7);
     fill(150);  
    ellipse(i*150, height/2 - diceSize/4, diceSize/7, diceSize/7);
    //Second dot & shadows
    fill(0);
    ellipse(i*150-1, height/2 + diceSize/4-1, diceSize/7+1, diceSize/7+1);
    fill(255);
    ellipse(i*150+1, height/2 + diceSize/4+1, diceSize/7, diceSize/7);
    fill(150);
    ellipse(i*150, height/2 + diceSize/4, diceSize/7, diceSize/7);
  }
  if (side == 6) {
   diceTotal6 += side;
  }
  if (side == 1) {
   diceTotal += side;
  }
    if (side == 2) {
   diceTotal2 += side;
  }
    if (side == 3) {
   diceTotal3 += side;
  }
      if (side == 4) {
   diceTotal4 += side;
  }
      if (side == 5) {
   diceTotal5 += side;
  }
//more complicated stuff
    //    if ((side == 5)&&(side == 4)&&(side == 3)&&(side == 2)) {
    // smallStraight = 25;
    //}
//roll
  if (mousePressed && mouseButton == LEFT)
   noLoop();
}

  textSize(25);
  fill(0);
  textAlign(LEFT,BOTTOM);
text(diceTotal, width/4, height/4*3-30);
text(diceTotal2, width/4, height/4*3);
text(diceTotal3, width/4, height/4*3+30);
text(diceTotal4, width/4, height/4*3+60);
text(diceTotal5, width/4, height/4*3+90);
text(diceTotal6, width/4, height/4*3+120);
text(chance, width/2+50, height/4*3+120);
//text(smallStraight, width/2+50, height/4*3+90);

}
