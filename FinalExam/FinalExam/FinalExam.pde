//Aidan Crean
//Final Exam



void setup() {
  size(800, 600);
  background(255, 255, 255);

}

void draw() {
  background(255, 255, 255);
  //body
  fill(180, 150, 20);
  ellipse(400, 300, 400, 400);
  //wings
  triangle(150, 300, 250, 300, 300, 450);
  triangle(650, 300, 550, 300, 500, 450);    
  //nose
  fill(255, 220, 120);
  triangle(380, 300, 420, 300, 400, 380);  
  //eyebrows
  fill(255, 255, 255);
  rect(270, 110, 100, 10);
  rect(430, 110, 100, 10);
  //eyes  
  ellipse(350, 220, 100, 150);
  ellipse(450, 220, 100, 150);
  fill(0, 0, 0);
  ellipse(350, 220, 50, 50);
  ellipse(450, 220, 50, 50);  
  fill(255, 255, 255);
  ellipse(360, 220, 10, 10);
  ellipse(460, 220, 10, 10); 
}
