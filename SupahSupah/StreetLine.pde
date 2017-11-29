// This class will represent the street lines on a street

class StreetLine {
 private PVector pos = new PVector();
 private float w;
 private float h;
 public float spacing;
 
 StreetLine(int x, int y) {
   this.pos.x = x;
   this.pos.y = y;
   this.w = 5;
   this.h = 5;
   this.spacing = 5;
 }
 
 // Display the line
 void display() {
  noStroke();
  fill(255);
  rect(this.pos.x - (this.w/2), this.pos.y, this.w, -this.h);
 }
 
 
 // Check if its offscreen
 boolean is_offscreen() {
  return (this.pos.y > height - 150);
 }
 
 
 
 // This will move the line by certain amount
  void update(float velocity) {
   float movement_speed = map(this.pos.y, 0, height, 0.03, 0.2);
   this.pos.y += velocity * movement_speed;
   this.w = map(this.pos.y, 0, height, 5, 20);
   this.h = map(this.pos.y, 0, height, 15, 60);
  }
  
  
  float get_spacing() {
   return this.spacing + this.h + this.pos.y; 
  }
 
 
}