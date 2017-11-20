// This class will represent the battery of the machine

class Battery {
  private PVector pos = new PVector();
  private float w;
  private float h;
  private color c = color(0, 255, 0);
  
  Battery(float x, float y, float w, float h) {
    this.pos.x = x;
    this.pos.y = y;
    this.w = w;
    this.h = h;
  }
  
  
  // This method will display the battery
  void display() {
   // display the square
   noFill();
   stroke(255);
   strokeWeight(1);
   rect(this.pos.x, this.pos.y, this.w, this.h);
   
   // display the little notch of the battery
   fill(255);
   rect(this.pos.x + this.w, this.pos.y + this.h/3, 5, this.h/3); 
   
   // Update the color of the battery
   this.update_battery_color();
   
   // display the amount of battery left
   fill(this.c);
   noStroke();
   // we take away 1 of the stroke of the battery shape
   rect(this.pos.x + 1, this.pos.y + 1, this.battery_width(), this.h - 1);
  }
  
  
  
  // This will return the width needed to display the amout of battery needed
  float battery_width() {
   float w = map(sp.battery_percentage(), 0, 100, 0, this.w);
   
   return (w > 0) ? w : 0;
  }
  
  
  // This will update the battery color depending on the amount of battery
  private void update_battery_color() {
    if (sp.battery_percentage() > 85) {
      this.c = color(0, 255, 0);
    } else if (sp.battery_percentage() > 65) {
      this.c = color(178, 255, 0);
    } else if (sp.battery_percentage() > 45) {
      this.c = color(255, 233, 0);
    } else if (sp.battery_percentage() > 25) {
      this.c = color(255, 102, 0);
    } else if (sp.battery_percentage() > 10) {
      this.c = color(255, 0, 0);
    }
  }
  
}