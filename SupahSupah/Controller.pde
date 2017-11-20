// This class is the controller shown at the bottom of the screen. Because it doesnt have any attributes of actions, it will just be displayed

class Controller {
  Speedometer speedometer;
  RectButton accelerate_button;
  
  Controller() {
   speedometer = new Speedometer();
   accelerate_button = new RectButton(50, height - 100, 100, 50); 
   
   accelerate_button.set_text("Accelerate", color(255, 255, 255));
  }
  
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
   
   speedometer.display();
   speedometer.update();
   accelerate_button.display();
 }
 
 
 // This function will check if anything of the controller has been clicked
 void mouse_pressed() {
   if (accelerate_button.is_clicked()) {
     accelerate_button.set_color(color(120, 120, 120));
     sp.accelerate();
   }
 }
 
 
  // This function will check if anything of the controller has been released
 void mouse_released() {
   if (accelerate_button.is_clicked()) {
     accelerate_button.set_color(color(255, 145, 23));
     sp.decelerate();
   }
 }
}