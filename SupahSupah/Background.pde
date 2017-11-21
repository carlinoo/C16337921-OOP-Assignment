// This class will represent tthe backgroud of the project

class Background {
 PVector pos = new PVector();
 float w;
 float h;
 
 Background() {
   this.pos.x = 0;
   this.pos.y = 0;
   this.w = width;
   this.h = height - 150;
 }
 
 
 // This will display the background
 void display() {
   fill(255, 0, 255);
   noStroke();
   rect(this.pos.x, this.pos.y, this.w, this.h);
 }
}