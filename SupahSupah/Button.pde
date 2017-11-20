//

class Button {
 protected PVector pos = new PVector();
 protected float w;
 protected float h;
 protected color c;
 
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
 
 
}