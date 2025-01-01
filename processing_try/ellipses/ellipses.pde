
void setup() {
 size(500, 500);
 background(#E6D9BD);
 
 int i = 0;
  while (i < 1000) {
     i = i + 1;
     fill(random(255), random(255), random(255));
     strokeWeight(random(3));
     ellipse(i % 20 * 40, i, random(60), random(40));
 }
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
