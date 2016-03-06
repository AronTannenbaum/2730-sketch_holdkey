float posX = 50;
float posY = 200;
float velX = 0.0;
float velY = 0.0;
final float GRAVITY = 0.4; 
final float JUMP = -10.0; 

boolean isOnGround() {
  return (posY >= height);
}

void setup() {
  size(640,480);
}

void draw() {
  posX += velX;
  posY += velY;
  
  if(isOnGround()) { // friction
    velX *= 0.92;
    if(holdingRight) { // no air control here, traction on ground
      velX = 2.5;
    }
  }
  
  if(isOnGround()) { // on ground to jump
    posY = height;
    velY = 0.0; 
  } else {
    velY += GRAVITY;
  }
  
  if(posX >= width) { // wrap to keep on screen
    posX -= width;
  }
  
  background(0);
  rect(posX-20,posY-100,40,100);
}
