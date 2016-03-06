float posX = 50;
float velX = 0.0;
float posY = 200;

boolean holdingRight = false;

void keyPressed() {
  if(keyCode == RIGHT) {
      holdingRight = false;
  }
}

void setup(){
  size(640, 480);
}

void draw() {
  if(holdingRight) {
    velX = 2.5;
  } else {
    velX = *.92;
  }
  posX += velX;
  
   backgound(0);
   rect(posX-20, posY-100, 40,100);
}
