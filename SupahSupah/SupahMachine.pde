// This is the main class of the entire the project
class SupahMachine {
  private boolean is_accelerating;
  private float acceleration = 1;
  private float deceleration = 0.5;
  private float speed = 0;
  private float max_speed = 500;
  
  Controller controller;
  
  // Constructor
  SupahMachine() {
    controller = new Controller();
  }
  
  
  // The initiation of the entire Project
  void init() {
    controller.display();
    this.move();
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

  
  // This method will change the is_accelerating boolean to true
  void accelerate() {
   this.is_accelerating = true; 
  }
  
  
  // This methid will change the is_accelerating boolean to false
  void decelerate() {
    this.is_accelerating = false;
  }

  
  
  
  // When the mouse is pressed
  void mouse_pressed() {
    controller.mouse_pressed();
  }
  
  
  // When the mouse is released
  void mouse_released() {
    controller.mouse_released();
  }
}