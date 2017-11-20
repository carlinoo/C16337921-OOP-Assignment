// This class is the controller shown at the bottom of the screen. Because it doesnt have any attributes of actions, it will just be displayed
class Controller {
  
 void display() {
   fill(41,50,138);
   stroke(241);
   ellipse(width/2, height - 50, 350, 350);
   noStroke();
   rect(0, height - 150, width, height);
   stroke(241);
   line(0, height - 150, width/3 - 9.5, height - 150);
   line(width/1.5 + 11, height - 150, width, height - 150);
 }
}