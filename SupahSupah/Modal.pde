// This will represent a modal that pop ups with information

class Modal {
 private PVector pos = new PVector();
 private float w;
 private float h;
 private boolean hidden = true;
 RectButton close_button;
 
 Modal(float x, float y, float w, float h) {
   this.pos.x = x;
   this.pos.y = y;
   this.w = w;
   this.h = h;
   close_button = new RectButton(this.pos.x + this.w - 25, this.pos.y, 25, 25);
   close_button.set_text("x", color(255, 255, 255));
 }
 
 
 // This method will display the modal
 void display() {
   if (!this.hidden) {
    fill(255);
    noStroke();
    rect(this.pos.x, this.pos.y, this.w, this.h);
    close_button.display();
   }

  
 }
 
 
 // This method will hide the modal
 void hide() {
  this.hidden = true; 
 }
 
 
 // This method will show the modal
 void show() {
  this.hidden = false; 
 }
 
 
 
 // This method will return weather the modal is hidden
 boolean is_hidden() {
  return hidden; 
 }
 
 
 // This method will return wheather it has been clicked or not
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