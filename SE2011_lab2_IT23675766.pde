void setup() {
  size(800, 600);
  rectMode(CENTER);
  noFill();
  strokeWeight(2);
}

void draw() {
  background(0); 

 
  for (int y = 50; y < height; y += 80) {
    for (int x = 50; x < width; x += 80) {
      
     
      int shapeType = (x + y) / 80 % 4;

      if (shapeType == 0) {
        stroke(0, 255, 150); 
        triangle(x, y-15, x-15, y+15, x+15, y+15);
      } 
      else if (shapeType == 1) {
        stroke(255, 50, 50); 
        ellipse(x, y, 30, 30);
      } 
      else if (shapeType == 2) {
        stroke(50, 150, 255); 
        line(x-12, y-12, x+12, y+12);
        line(x+12, y-12, x-12, y+12);
      } 
      else {
        stroke(255, 100, 200); 
        rect(x, y, 28, 28);
      }
    }
  }
}
