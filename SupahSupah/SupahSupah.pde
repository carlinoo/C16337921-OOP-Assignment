Controller controller;

void setup() {
  size(800, 600);
  background(41);
  controller = new Controller();
}


void draw() {
  controller.display();
}