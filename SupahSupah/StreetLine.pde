// This class will represent the street lines on a street

class StreetLine {
 private PVector pos = new PVector();
 private int w;
 private int h;
 
 StreetLine(int x, int y, int w, int h) {
   this.pos.x = x;
   this.pos.y = y;
   this.w = w;
   this.h = h;
 }
 
 void display() {
  noStroke();
  fill(255);
  rect(this.pos.x, this.pos.y, this.w, this.h);
 }
 
 
}