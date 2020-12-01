PFont f;
float angleRotate = 0.0;

void setup() {
  size(1600, 1300);
  background(0);

  // Create the font from the .ttf file in the data folder
  f = createFont("RobotoMono-Regular.ttf", 60);
  textFont(f);
} 

void draw() {
  background(0);

  strokeWeight(1);
  stroke(153);

 
  
  pushMatrix();
  translate(540, 580);
  rotate(radians(angleRotate));
  text(int(angleRotate) % 360 + " PANOPTIQUE", 0, 0);
  line(0, 0, 150, 0);
  popMatrix();
  
  angleRotate += 0.25;

  stroke(255, 0, 0);
  strokeWeight(4);

  point(540, 580);
}
