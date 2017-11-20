Controller controller;
Speedometer speedometer;
int i = 0;

void setup() {
  size(800, 600);
  background(41);
  controller = new Controller();
  speedometer = new Speedometer();
}


void draw() {
  background(41);
  controller.display();
  speedometer.display();

  speedometer.accelerate(1);
  
}