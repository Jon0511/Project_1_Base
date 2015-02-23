PImage spook; //50*50

final float GRAVITY = 0.8; //gravity, "final" means it cannot be changed, once defined
float ACCELERATION = 1.3; //i.e. the longer spook falls, the faster he falls

float spookX, spookY;
float speed; //Spook's Movement Speed
float x, y;
String controls;

void setup() {
  size(1200, 800);

  spook = loadImage ("player_Spooky.png");
  frameRate(20);


  spookX = 120.0;
  spookY = 120.0;
}


void draw() {

  background(0);

  noStroke();
  fill(255, 238, 83, 95);
  ellipseMode(CENTER);


  ellipse(mouseX + 20, mouseY + 20, random(140, 160), random(140, 160)); //inner circle
  ellipse(mouseX+20, mouseY+20, random(200, 220), random(200, 220)); //outer circle
  //imageMode(CENTER);
  image(spook, mouseX, mouseY);
}

class spook {
  String controls; //controls of Spook
  float x, y;
}
/*void keyPressed() { //manages keystrokes
  if (controls == "ad") {
    if (key == 'a' || key == "A") {
      x -= speed; //move left
    }
    if (key == 'd' || key == 'D') {
      x += speed; //move right
    }
    if (key == 'r') {
      background(0);
    }
      if (mousePressed) {
        background(197);
        */

//I wanted to implement WASD controls instead of mouse follow. 
//Setting keystrokes was a problem for me. i currently have it commented out



