// This class with be the one who displays and does actions for the speedometer. It inherits from the Indicator

class Speedometer extends Indicator {
  Arrow arrow;
  float speed = 0;
  float max_speed = 500;
  PVector pos = new PVector();

  
  
  // This is the constructor method. It will set the center of the speedometer
  Speedometer() {
    this.pos.x = width/2;
    this.pos.y = height - 150;
    
    // create the arrow for the speedomether with the inital value of 0
    arrow = new Arrow(85, this.pos.x, this.pos.y, 0);
  }
  
  
  // This method will display theaoutside of the speedometer
  void display() {
   noStroke();
   fill(255);
   arc(this.pos.x, this.pos.y, 200 - 10, 200 - 10, radians(180), radians(360), CHORD);
   arrow.display();
  }
  
  
  // This method will position the arrow at certain speed
  void change_speed_to(float speed) {
    if (speed <= 0) {
     arrow.set_angle(0); 
    } else if (speed >= max_speed) {
     arrow.set_angle(180); 
    }
  }
  
  
  void accelerate(float acc) {
   this.speed += acc; 
  }

  

}