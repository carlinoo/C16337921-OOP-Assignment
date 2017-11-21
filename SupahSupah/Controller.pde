// This class is the controller shown at the bottom of the screen. Because it doesnt have any attributes of actions, it will just be displayed

class Controller {
  Speedometer speedometer;
  RectButton accelerate_button;
  RectButton break_button;
  Battery battery;
  BatteryMonitor battery_monitor;
  RectButton settings_activation_button;
  Setting setting;
  
  Controller() {
   speedometer = new Speedometer();
   accelerate_button = new RectButton(50, height - 100, 100, 50); 
   break_button = new RectButton(width - 150, height - 100, 100, 50); 
   
   accelerate_button.set_text("Accelerate", color(255, 255, 255));
   break_button.set_text("Break", color(255, 255, 255));
   
   battery = new Battery(width/2 - 50, height - 120, 100, 30);
   
   battery_monitor = new BatteryMonitor(width/2 - 75, height - 70, 150, 50);
   
   settings_activation_button = new RectButton(width - 50, height - 149, 50, 25, color(243, 65, 123));
   settings_activation_button.set_text("More", color(255, 255, 255));
   
   setting = new Setting();
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
   break_button.display();
   battery.display();
   battery_monitor.display();
   settings_activation_button.display();
   setting.modal.display();
 }
 
 
 // This function will check if anything of the controller has been clicked
 void mouse_pressed() {
   // If accelerate_button is pressed, start accelerating
   if (accelerate_button.is_clicked()) {
     accelerate_button.set_color(color(120, 120, 120));
     sp.accelerate();
     return;
   }
   
   // If break_button is pressed, start breaking
   if (break_button.is_clicked()) {
    break_button.set_color(color(120, 120, 120));
    sp.breaks();
    return;
   }
   
   // If the settings_activation_button is clicked show the modal
   if (settings_activation_button.is_clicked()) {
    setting.modal.show();
    return;
   }
   
   // If the settings modal is open and it has been clicked outside or the close button has been clicked, close the modal
   if (!setting.modal.is_hidden() && (!setting.modal.is_clicked() || setting.modal.close_button.is_clicked())) {
     setting.modal.hide();
     return;
   }
 }
 
 
  // This function will check if anything of the controller has been released
 void mouse_released() {
   // If accelerate_button is released, stop accelerating
   if (accelerate_button.is_clicked()) {
     accelerate_button.set_color(color(255, 145, 23));
     sp.decelerate();
   }
   
   // If break button is released, stop breaking
   if (break_button.is_clicked()) {
     break_button.set_color(color(255, 145, 23));
     sp.stop_breaking();
   }
   
 }
}