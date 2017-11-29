// This class will represent tthe backgroud of the project

class Background {
 PVector pos = new PVector();
 float w;
 float h;
 ArrayList<StreetLine> street_lines;
 
 Background() {
   this.pos.x = 0;
   this.pos.y = 0;
   this.w = width;
   this.h = height - 150;
   street_lines = new ArrayList<StreetLine>();
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
   this.display_lines();
   
   if (frameCount % 60 == 0) {
    this.create_line(); 
   }
 }
 
 private void display_grass() {
   fill(102, 204, 0);
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
 
 
 // This will display the street lines, add more to the array, delete to the array and resize
 private void display_lines() {
   for (StreetLine line : this.street_lines) {
     line.display();
     line.update(4);
     
     if (line.is_offscreen()) {
       this.street_lines.remove(line); 
       

     }
   }
 }
 
 // This will create a line
 private void create_line() {
   street_lines.add(new StreetLine(width/2, -15));
 }
 
}