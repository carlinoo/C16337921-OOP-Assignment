// This class with be the one who displays and does actions for the speedometer. It inherits from the Indicator

class Speedometer extends Indicator {
  private Arrow arrow;
  private SpeedDisplay display;
  private float speed = 0;
  private float max_speed = 500;
  private PVector pos = new PVector();

  
  
  // This is the constructor method. It will set the center of the speedometer
  Speedometer() {
    this.pos.x = width/2;
    this.pos.y = height - 150;
    
    // create the arrow for the speedomether with the inital value of 0
    arrow = new Arrow(85, this.pos.x, this.pos.y, 0);
    
    // create the display
    display = new SpeedDisplay(this.pos.x - 40, this.pos.y - 60, 80, 50, color(185, 185, 185));
  }
  
  
  // This method will display theaoutside of the speedometer
  void display() {
   noStroke();
   fill(255);
   arc(this.pos.x, this.pos.y, 200 - 10, 200 - 10, radians(180), radians(360), CHORD);
   display.display();
   display.display_text(String.valueOf(this.speed));
   arrow.display();
  }
  
  
  // This method will position the arrow at certain speed
  void change_speed_to(float speed) {
    if (speed <= 0) {
      this.speed = 0;
     arrow.set_angle(0);
     return;
    } else if (speed >= max_speed) {
     arrow.set_angle(180); 
     this.speed = max_speed;
     return;
    }
    
    this.speed = speed;
    
    // get the angle and set it
    float angle = (speed/max_speed * 180);
    arrow.set_angle(angle); 
 
  }
  
  
  void accelerate(float acc) {
   this.speed += acc; 
   this.change_speed_to(this.speed);
  }

  

}