/*

Color blend modes:

BLEND

ADD

SUBTRACT

DARKEST

LIGHTEST

DIFFERENCE

EXCLUSION

MULTIPLY

SCREEN

REPLACE

*/

void setup() {
 size(500, 500);
 background(0);
 blendMode(ADD);
 
 println("Start");
  
 int i = 0;
 while (i < 10) {
   i = i + 1;
   
   int j = 0;
   while (j < 10) {
    j = j + 1;
    
    int posX = i * 50;
    int posY = j * 50;
    float dist = random(10);
    float col = random(255);
    float squareSize = random(30);
    
    fill(col, 0, 0);
    rect(posX, posY, squareSize, squareSize);
    
    fill(0, col, 0);
    rect(posX + dist, posY + dist, squareSize, squareSize);
    
    fill(0, 0, col);
    rect(posX + dist * 2, posY + dist * 2, squareSize, squareSize);
   }
 }
 
 println("Done");
}

void draw() {
  //
}

// Save image
void keyPressed() {
  if (key == 's' || key == 'S') {
    save("artwork/processing_screenshot_" + year() + month() + day() + hour() + minute() + second() + ".png");
  }
}
