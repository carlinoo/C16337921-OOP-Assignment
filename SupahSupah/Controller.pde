// This class is the controller shown at the bottom of the screen. Because it doesnt have any attributes of actions, it will just be displayed

class Controller {
  
 void display() {
   strokeWeight(1);
   fill(41,50,138);
   stroke(241);
   ellipse(width/2, height - 150, 200, 200);
   noStroke();
   rect(0, height - 150, width, height);
   stroke(241);
   line(0, height - 150, width/2 - 100, height - 150);
   line(width/2 + 100, height - 150, width, height - 150);
 }
}