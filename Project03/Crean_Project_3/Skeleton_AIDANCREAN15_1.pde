//Aidan Crean
//Skeleton class

class Skeleton extends Actor {
  
  Segment body;
  Segment neck;
  Segment lShoulder;
  Segment rShoulder;
  Segment lArm;
  Segment rArm;
  Segment lLowArm;
  Segment rLowArm;
  Segment lLeg;
  Segment rLeg;
  Segment lCalf;
  Segment rCalf;
   
  public void Segment(float xPos, float yPos) {
  }
  
  public void drawFrame() {
    body.drawLine();
    neck.goTo(body.getEndX(), body.getEndY());
    neck.drawLine();
    lLeg.drawLine();
    rLeg.drawLine();
    lCalf.goTo(lLeg.getEndX(), lLeg.getEndY());
    lCalf.drawLine();
    rCalf.goTo(rLeg.getEndX(), rLeg.getEndY());
    rCalf.drawLine();
    lShoulder.goTo(body.getEndX(), body.getEndY());
    lShoulder.drawLine();
    rShoulder.goTo(body.getEndX(), body.getEndY());
    rShoulder.drawLine();
    lArm.goTo(lShoulder.getEndX(), lShoulder.getEndY());
    lArm.drawLine();
    rArm.goTo(rShoulder.getEndX(), rShoulder.getEndY());
    rArm.drawLine();
    lLowArm.goTo(lArm.getEndX(), lArm.getEndY());
    lLowArm.drawLine();
    rLowArm.goTo(rArm.getEndX(), rArm.getEndY());
    rLowArm.drawLine();
    fill(0, 0, 0);
    ellipse(neck.getEndX(), neck.getEndY(), 50, 50);
  }
  
  public void act() {
    drawFrame();
  }
  
  public Skeleton(float xPos, float yPos) {
    super(xPos, yPos);
    
    body = new Segment(xPos, yPos, -90, 100);
    body.weight = 10;
    body.setPenColor(255, 255, 255);
    
    neck = new Segment(body.getEndX(), body.getEndY(), 270, 50);
    neck.weight = 10;
    neck.setPenColor(255, 255, 255);
    
    lLeg = new Segment(xPos, yPos, 45, 75);
    lLeg.weight = 10;
    lLeg.setPenColor(0, 0, 255);
    
    lCalf = new Segment(lLeg.getEndX(), lLeg.getEndY(), 90, 60);
    lCalf.weight = 10;
    lCalf.setPenColor(0, 255, 0);
    
    rLeg = new Segment(xPos, yPos, 135, 75);
    rLeg.weight = 10;
    rLeg.setPenColor(0, 0, 255);
    
    rCalf = new Segment(rLeg.getEndX(), rLeg.getEndY(), 90, 60);
    rCalf.weight = 10;
    rCalf.setPenColor(0, 255, 0);
    
    lShoulder = new Segment(body.getEndX(), body.getEndY(), 180, 30);
    lShoulder.weight = 10;
    lShoulder.setPenColor(0, 0, 255);
    
    rShoulder = new Segment(body.getEndX(), body.getEndY(), 0, 30);
    rShoulder.weight = 10;
    rShoulder.setPenColor(0, 0, 255);
    
    lArm = new Segment(lShoulder.getEndX(), lShoulder.getEndY(), 135, 50);
    lArm.weight = 10;
    lArm.setPenColor(0, 255, 0);
    
    lLowArm = new Segment(lArm.getEndX(), lArm.getEndY(), 115, 50);
    lLowArm.weight = 10;
    lLowArm.setPenColor(255, 0, 0);
    
    rArm = new Segment(rShoulder.getEndX(), rShoulder.getEndY(), 45, 50);
    rArm.weight = 10;
    rArm.setPenColor(0, 255, 0);
    
    rLowArm = new Segment(rArm.getEndX(), rArm.getEndY(), 65, 50);
    rLowArm.weight = 10;
    rLowArm.setPenColor(255, 0, 0);
  }
  
}
  
    
    


