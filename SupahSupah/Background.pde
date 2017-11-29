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
   fill(180, 180, 180);
   noStroke();
   rect(this.pos.x, this.pos.y, this.w, this.h);
   strokeWeight(5);
   stroke(0);
   line(0, height, width/3, 0);
   line(width, height, 2*width/3, 0);
   this.display_grass();
 }
 
 private void display_grass() {
   fill(0, 255, 0);
   noStroke();
   beginShape();
   vertex(0, height);
   vertex(width/3, 0);
   vertex(0, 0);
   endShape(CLOSE);
   
   beginShape();
   vertex(width, height);
   vertex(2*width/3, 0);
   vertex(width, 0);
   endShape(CLOSE);
 }
}