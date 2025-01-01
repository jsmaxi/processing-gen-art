
void setup() {
 size(500, 500);
 background(#123456);
}

void draw() {
  if (mouseX > 0)
    rect(mouseX, mouseY, 50, 50);
}

// Save image
void keyPressed() {
  if (key == 's' || key == 'S') {
    save("artwork/processing_screenshot_" + year() + month() + day() + hour() + minute() + second() + ".png");
  }
}
