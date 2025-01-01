// https://processing.org/reference/

static final int NUM_LINES = 10;
static final int[] COLORS = {255, 225, 190, 160, 130, 100, 70, 40, 10, 0};

float t;

void setup() {
 background(20);
 size(500, 500);
}

void draw() {
 background(20);
 translate(width/2, height/2);
 
 for (int i = 0; i < NUM_LINES; i++)
 {
   stroke(COLORS[i], 0, 0, 128);  // Semi-transparent red
   strokeWeight(i + 1);
   line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
 }
   
  t += 0.5;
}

/*

// Basic trigonometric functions (input in radians)
sin(angle)   // Sine
cos(angle)   // Cosine
tan(angle)   // Tangent

// Inverse trigonometric functions (return radians)
asin(value)  // Arcsine (inverse sine)
acos(value)  // Arccosine (inverse cosine)
atan(value)  // Arctangent (inverse tangent)
atan2(y, x)  // Two-argument arctangent

// Convert between degrees and radians
radians(degrees)  // Convert degrees to radians
degrees(radians)  // Convert radians to degrees

*/

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
