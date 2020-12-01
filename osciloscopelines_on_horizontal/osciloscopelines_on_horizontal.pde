static final int NUM_LINES = 10;

float t;

void setup(){
  background (20);
  size(1400,800);
}

void draw(){
  background(20);
  stroke(255);
  strokeWeight(5);
  
  translate (width/2, height/2);
  
  for(int i =0; i <NUM_LINES; i++){
  line(x1(t/2 +i), y1(t+i), x2(t/2+i), y2(t));
  }
 // point(x1(t), y1(t));
   // point(x2(t), y2(t));
  t +=0.2;
  
}
  
  float  x1(float t) {
    return cos (t/ 4) *100 +sin(t/5) * 20;
    
  }
  
  float y1(float t) {
    return cos(-t/10) *130 +sin (-t/5) *50- cos(t/19);
    //within sin we change the increasefreaquency
    
}
  float  x2(float t) {
    return sin (t/ 10) *100 +sin(t-2) * 2+ cos(t) * 10;
    
  }
  
  float y2(float t) {
    return -cos(t/ 120) * 20 +cos(t/12) *20;
    //within sin we change the increasefreaquency
    
}
