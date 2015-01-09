//Project 3
//Aidan Crean

Skeleton mySkeleton = new Skeleton(400, 350);

void setup() {
  size(800, 600);
  background(0, 0, 0);
  
}

void draw() {
  background(0, 0, 0);
  
  mySkeleton.act(); 
  
  if (keyPressed) {
    if (key == 'w') {
      mySkeleton.lLeg.turn(1);
    }
    if (key == 'q') {
      mySkeleton.lLeg.turn(-1);
    }
    if (key == 'p') {
      mySkeleton.rLeg.turn(1);
    }
    if (key == 'o') {
      mySkeleton.rLeg.turn(-1);
    }
    if (key == 'u') {
      mySkeleton.rCalf.turn(-1);
    }
    if (key == 'i') {
      mySkeleton.rCalf.turn(1);
    }
    if (key == 'r') {
      mySkeleton.lCalf.turn(1);
    }
    if (key == 'e') {
      mySkeleton.lCalf.turn(-1);
    }
    if (key == 'a') {
      mySkeleton.lArm.turn(1);
    }
    if (key == 's') {
      mySkeleton.lArm.turn(-1);
    }
    if (key == 'l') {
      mySkeleton.rArm.turn(1);
    }
    if (key == ';') {
      mySkeleton.rArm.turn(-1);
    }
    if (key == 'j') {
      mySkeleton.rLowArm.turn(1);
    }
    if (key == 'k') {
      mySkeleton.rLowArm.turn(-1);
    }
    if (key == 'd') {
      mySkeleton.lLowArm.turn(1);
    }
    if (key == 'f') {
      mySkeleton.lLowArm.turn(-1);
    }
    if (keyCode == LEFT) {
      mySkeleton.body.turn(1);
    }
    if (keyCode == RIGHT) {
      mySkeleton.body.turn(-1);
    }
    if (keyCode == UP) {
      mySkeleton.neck.turn(1);
    }
    if (keyCode == DOWN) {
      mySkeleton.neck.turn(-1);
    }
  }
  
}
