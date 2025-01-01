// https://www.youtube.com/watch?v=LaarVR1AOvs

// y = 5x

// x = 5t
// y = 3t + 3

static final int NUM_LINES = 10;

float t;

void setup() {
 background(20);
 size(500, 500);
}

void draw() {
 background(20);
 stroke(225);
 strokeWeight(5);
 
 translate(width/2, height/2);
 
 for (int i = 0; i < NUM_LINES; i++)
 {
   line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
 }
 t += 0.5;
}

float x1(float t) {
  return sin (t / 10) * 100 + sin (t / 5) * 20;
}

float y1(float t) {
  return cos (t / 10) * 100;
}

float x2(float t) {
  return sin (t / 10) * 200 + sin (t) * 2;
}

float y2(float t) {
  return cos (t / 20) * 200 + sin (t / 12) * 20;
}

// Save image
void keyPressed() {
  if (key == 's' || key == 'S') {
    save("artwork/processing_screenshot_" + year() + month() + day() + hour() + minute() + second() + ".png");
  }
}
