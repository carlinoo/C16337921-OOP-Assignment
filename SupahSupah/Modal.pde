// This will represent a modal that pop ups with information

class Modal {
 private PVector pos = new PVector();
 private float w;
 private float h;
 private boolean hidden = true;
 RectButton close_button;
 RectButton recharge_button;
 private ArrayList<String> text = new ArrayList<String>();
 
 Modal(float x, float y, float w, float h) {
   this.pos.x = x;
   this.pos.y = y;
   this.w = w;
   this.h = h;
   close_button = new RectButton(this.pos.x + this.w - 25, this.pos.y, 25, 25);
   close_button.set_text("x", color(255, 255, 255));
   recharge_button = new RectButton(width/2 - 100, height - 200, 200, 100);
   recharge_button.set_text("Re-Charge Battery", color(255, 255, 255));
 }
 
 
 // This method will display the modal
 void display() {
   if (!this.hidden) {
    fill(255);
    noStroke();
    rect(this.pos.x, this.pos.y, this.w, this.h);
    close_button.display();
    recharge_button.display();
    display_text();
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
 
 
 
 // This will set the text of the modal
 void set_text(String s) {
   this.text.add(s);
 }
 
 
 // This method will display the text sent as an aprgument
 private void display_text() {
  textAlign(CENTER);
  textSize(18);
  fill(0);
  for (int i = 0; i < this.text.size(); i++) {
    text(this.text.get(i), width/2, this.pos.y + (40 * (i + 1)));   
  }
 }

}