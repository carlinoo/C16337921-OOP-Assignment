// This is the main class of the entire the project
class SupahMachine {
  
  private boolean is_accelerating;
  private boolean is_charging = false;
  private float acceleration = 1;
  private float deceleration = 0.5;
  private float speed = 0;
  private float max_speed = 500;
  private float battery = 300;
  private float max_battery = 500;
  
  Controller controller;
  Background background;
  
  // Constructor
  SupahMachine() {
    controller = new Controller();
    background = new Background();
  }
  
  
  // The initiation of the entire Project
  void init() {
    background.display();
    controller.display();
    this.move();
    this.update_battery();
  }
  
  
  
  // This method will change the speed of the machine
  void change_speed_to(float speed) {
    if (speed <= 0) {
      this.speed = 0;
     return;
    } else if (speed >= max_speed) { 
     this.speed = max_speed;
     return;
    }
    
    this.speed = speed;
  }
  
  
  // This method will accelerate at the acceleration of acc
  void move() {
    if (is_accelerating) {
      this.speed += this.acceleration; 
      this.change_speed_to(this.speed);
    } else {
      this.speed -= this.deceleration; 
      this.change_speed_to(this.speed);
    }
  }

  
  // This method will change the is_accelerating boolean to true if there is enough battery
  void accelerate() {
   this.is_accelerating = (this.battery > 0) ? true : false; 
  }
  
  
  // This methid will change the is_accelerating boolean to false
  void decelerate() {
    this.is_accelerating = false;
  }
  
  
  
  // This method will make the car press the breaks
  void breaks() {
   this.is_accelerating = false;
   this.deceleration = 5;
  }

  
  
  void stop_breaking() {
    this.deceleration = 0.5;
  }
  
  
  // When the mouse is pressed
  void mouse_pressed() {
    controller.mouse_pressed();
  }
  
  
  // When the mouse is released
  void mouse_released() {
    controller.mouse_released();
  }
  
  
  // This will return the current percentage battery of the Machine
  float battery_percentage() {
    return (this.battery/this.max_battery) * 100;
  }

  
  // This function will use the battery
  void update_battery() {
    if (this.is_charging) {
      this.battery += 100;
      
      if (this.battery > this.max_battery) {
        this.battery = this.max_battery;
      }
      
      // only take away battery if the machine is accelerating
    } else if (this.is_accelerating) {
     this.battery -= this.speed * 0.002; 
    }
  }
  
  
  
  // This will put the machine to charge
  void charge() {
     this.is_charging = true;
  }
  
  
  // This will stop charging the machine
  void stop_charging() {
    this.is_charging = false; 
  }
  
}