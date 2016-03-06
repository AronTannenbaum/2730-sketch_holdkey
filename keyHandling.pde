boolean holdingRight = false;

void keyPressed() {
  if(keyCode == RIGHT) {
    holdingRight = true;
  }
  if(key == ' ' && isOnGround()) {
    velY += JUMP;
  }
}

void keyReleased() {
  if(keyCode == RIGHT) {
    holdingRight = false;
  }
}

