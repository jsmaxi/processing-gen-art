// https://processing.org/reference/

float t;

void setup() {
 background(20);
 size(500, 500);
}

void draw() {
 background(20);
 translate(width/2, height/2);
 
  drawShapes();
  
  t += 1;
}

void drawShapes() {
  /*
  
  // Rectangle and Square
  rect(x, y, width, height);      // Rectangle
  square(x, y, size);             // Square (equal sides)
  
  // Circle and Ellipse
  circle(x, y, diameter);         // Circle
  ellipse(x, y, width, height);   // Ellipse/Oval
  
  // Triangle
  triangle(x1, y1, x2, y2, x3, y3);  // Three points
  
  // Line
  line(x1, y1, x2, y2);          // Start and end points
  
  // Arc (part of circle/ellipse)
  arc(x, y, width, height, start, stop);  // start/stop in radians
  
  // Quad (four-sided polygon)
  quad(x1, y1, x2, y2, x3, y3, x4, y4);  // Four points
  
  */

  /*
  
  Transformations:
  
  translate(x, y);
  scale(x, y);
  rotate(radians(t));
  
  */
  
  /*
  
  Math functions:
  
  abs()
  ceil()
  constrain()
  dist()
  exp()
  floor()
  lerp()
  log()
  map()
  mag()
  max()
  min()
  norm()
  pow()
  round()
  sq()
  sqrt()
  
  */
  
  rotate(radians(t));  // Rotating motion
  
  // Blue color fill
  fill(0, 0, 255); 
  // White stroke (border)
  stroke(255);
  // Set stroke weight
  strokeWeight(2);
  
  rect(-25, -25, -25, -25);
  
  // Green color fill
  fill(0, 255, 0); 
  
  circle(50, 50, 50); 
  
  triangle(-20, -20, -20, 10, 10, 10);
  
  line(x1(t / 10), y1(t / 10), 0, 0); 
  
  // No fill (transparent)
  noFill();
  
  ellipse(-15, -15, 50, 50); 
  
  // PI HALF_PI QUARTER_PI TWO_PI (TAU)
  arc(120, 120, 100, 100, 0, PI);
  arc(135, 135, 100, 100, 0, HALF_PI);
  arc(100, 90, 50, 50, 0, QUARTER_PI);
       
  quad(-50, -50,    // Top-left
       50, -50,     // Top-right
       100, 50,     // Bottom-right
       -100, 50);   // Bottom-left
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
  return cos (t) * 10 + sin (t) * 20;
}

float y1(float t) {
  return cos (t) * 100 + sin (t) * 20;
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
