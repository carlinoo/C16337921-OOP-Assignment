//

class RectButton extends Button {
  
  RectButton(float x, float y, float w, float h) {
    super(x, y, w, h);
  }
  
  RectButton(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }
  
  
  // This method will display the button
  void display() {
   fill(this.c);
   noStroke();
   rect(this.pos.x, this.pos.y, this.w, this.h); 
  }
  
  
  // This method will check if a button has been clicked
  boolean is_clicked() {
   // Mouse is in between y range
    if (mouseY > this.pos.y && mouseY < this.pos.y + this.h) {
      // Mouse is in between x range
      if (mouseX > this.pos.x && mouseX < this.pos.x + this.w) {
        return true;
      }
    }
    return false;
  } 
}