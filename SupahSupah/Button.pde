//

class Button {
 protected PVector pos = new PVector();
 protected float w;
 protected float h;
 protected color c;
 protected String text;
 protected color text_color;
 
 // Constructor without color, giving by default white
 Button(float x, float y, float w, float h) {
  this.pos.x = x;
  this.pos.y = y;
  this.h = h;
  this.w = w;
  this.c = color(255);
 }
 
 // Constructor with all parameters
 Button(float x, float y, float w, float h, color c) {
  this.pos.x = x;
  this.pos.y = y;
  this.h = h;
  this.w = w;
  this.c = c;
 }
 
 
 // This will set the text and color of it
 void set_text(String s, color c) {
   this.text = s;
   this.text_color = c;
 }
 
 
 // This will display the text
 void display_text() {
  textAlign(CENTER);
  textSize(18);
  fill(this.text_color);
  text(this.text, this.pos.x + this.w/2, this.pos.y + this.h/2 + 6); 
 }
 
 
 
 // This method will set the color of the button
 void set_color(color c) {
   this.c = c;
 }
 
 
}