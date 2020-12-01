void setup() {
   size(1700, 1200);
}
 void draw() {
   background(0);
   rectMode(CENTER);
   stroke(#f1f1f1);
   strokeWeight(5);
   noFill();
   
   float wave = sin(frameCount * 0.02) * 160;
     
   rect(width/2 + wave, height/2, 600, 600);
 
   push();
   translate(width/2, height/2);
   float x1 = 0;
   float y1 = -300;
   float x2 = -300;
   float y2 = 300;

   pop();

   ellipse(width/2 - wave, height/2, 600, 600);
}
