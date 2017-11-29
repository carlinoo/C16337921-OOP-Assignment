// This class will represent the street lines on a street

class StreetLine {
 private PVector pos = new PVector();
 private float w;
 private float h;
 
 StreetLine(int x, int y) {
   this.pos.x = x;
   this.pos.y = y;
   this.w = w;
   this.h = h;
 }
 
 // Display the line
 void display() {
  noStroke();
  fill(255);
  rect(this.pos.x - (this.w)/2, this.pos.y, this.w, this.h);
 }
 
 
 // Check if its offscreen
 boolean is_offscreen() {
  return (this.pos.y > height - 150);
 }
 
 
 
 // This will move the line by certain amount
  void update(float velocity) {
   this.pos.y += velocity;
   this.w = map(this.pos.y, 0, height, 5, 20);
   this.h = map(this.pos.y, 0, height, 15, 100);
  }
 
 
}