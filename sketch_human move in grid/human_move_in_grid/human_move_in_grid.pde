PGraphics pg;
PFont font;

void setup() {
  font = createFont("../human_move_in_grid/Alliance-TextBlack.otf", 700);
  size(2500, 1000, P2D);
  pg = createGraphics(3200, 800, P2D);
}

void draw() {
  background(0);
  
  pg.beginDraw();
  pg.background(0);
  pg.fill(255);
  pg.textFont(font);
  pg.textSize(550);
  pg.pushMatrix();
  pg.translate(width/2, height/1.5-215);
  pg.textAlign(CENTER, CENTER);
  pg.text("futuring", 0, 0);
  pg.popMatrix();
  pg.endDraw();


  int tilesX = 10;
  int tilesY = 10;

  int tileW = int(width/tilesX);
  int tileH = int(height/tilesY);

  for (int y = 0; y < tilesY; y++) {
  for (int x = 0; x < tilesX; x++) {

      
 //wavwe
 int wave = int(sin((frameCount + ( x*y )) * 0.05) *250);

      // this is source
      int sx = x*tileW + wave;
      int sy = y*tileH;
      int sw = tileW;
      int sh = tileH;


      // DESTINATION
      int dx = x*tileW;
      int dy = y*tileH;
      int dw = tileW;
      int dh = tileH;
      
      copy(pg, sx, sy, sw, sh, dx, dy, dw, dh);
 
    }
  }
}
