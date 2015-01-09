//Segment class

class Segment extends Actor {
  float len;
  float weight = 5;
  
  public Segment(float x, float y) {
    super(x, y);
    len = size;
  }
  
  public Segment() {
    super();
    len = size;
  }
  
  public Segment(float x, float y, float d, float s) {
    super(x, y);
    direction = d;
    len = s;
  }
  
  public void drawLine() {
    float x2 = x + len*cos(radians(direction));
    float y2 = y + len*sin(radians(direction));
    stroke(penRed, penGreen, penBlue);
    strokeWeight(weight);
    line(x, y, x2, y2);
  }
 
 public float getEndX() {
  float x2 = x + len*cos(radians(direction));
  return x2;
 }
 
 public float getEndY() {
   float y2 = y + len*sin(radians(direction));
   return y2;
 }
 
// public float getEndX(float pDirection) {
//  float x2 = x + len*cos(radians(pDirection + direction));
//  return x2;
// }
// 
// public float getEndY(float pDirection) {
//   float y2 = y + len*sin(radians(pDirection + direction));
//   return y2;
// }
// 
// public void drawLine(float parentDirection) {
//    float x2 = x + len*cos(radians(parentDirection + direction));
//    float y2 = y + len*sin(radians(parentDirection + direction));
//    stroke(penRed, penGreen, penBlue);
//    strokeWeight(weight);
//    line(x, y, x2, y2);
//  }

 
}
