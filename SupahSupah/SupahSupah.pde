// SupaMachine is the main object of Project. the rest of the objects will get their functionality thanks to it
SupahMachine sp;

void setup() {
  size(800, 600);
  background(41);
  sp = new SupahMachine();
}


void draw() {
  background(41);
  sp.init();
}


// This will run when the mouse is pressed
void mousePressed() {
 sp.mouse_pressed();
}

// This will run the mouse is released
void mouseReleased() {
  sp.mouse_released();
}