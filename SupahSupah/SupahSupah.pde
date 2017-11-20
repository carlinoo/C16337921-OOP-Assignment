Controller controller;
Speedometer speedometer;
RectButton rb;
int i = 0;

void setup() {
  size(800, 600);
  background(41);
  controller = new Controller();
  speedometer = new Speedometer();
  rb = new RectButton(50, height - 100, 70, 50, color(255, 145, 23));
}


void draw() {
  background(41);
  controller.display();
  speedometer.display();

  speedometer.accelerate(1);
  rb.display();
  

}


// This will run when the mouse is pressed
void mousePressed() {
 if (rb.is_clicked()) {
   println("Clicked");  
 }
}