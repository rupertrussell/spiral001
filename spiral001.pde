// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
// Artwork on Redbubble at:
// https://www.redbubble.com/shop/ap/103354174?ref=studio-promote
// https://www.redbubble.com/shop/ap/103341543?ref=studio-promote


// A Polar coordinate, radius now starts at 0 to spiral outwards
float r = 0;
float theta = 0;
float grow = 0.001;
int count = 0;
float radius = 7;
void setup() {
  size(9632, 9632);
  background(0);
  smooth();
}

void draw() {
  // Polar to Cartesian conversion
  float x = r * cos(theta);
  float y = r * sin(theta);

  // Draw an ellipse at x,y
  stroke(255);
  fill(255);
  // Adjust for center of window
  ellipse(x+width/2, y+height/2, 7 + radius, 7 + radius);

  // Increment the angle
  theta += 0.09;
  // Increment the radius
  r += 0.25;

  if ( x > 9650) {
    save("spiralX.png");
    exit();
  }
  radius = radius + grow;
  println("radius = " + radius);
}

void keyPressed() {
  save("spiral_c_" + count + ".png");
  count ++;
}
