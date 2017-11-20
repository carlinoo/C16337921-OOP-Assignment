// This class will be the one that takes care of al displays/screens

class Display {
  protected PVector pos = new PVector();
  protected float h;
  protected float w;
  protected color c;
  
  Display(float x, float y, float w, float h, color c) {
    this.pos.x = x;
    this.pos.y = y;
    this.h = h;
    this.w = w;
    this.c = c;

  }
  
  
  // This method withh display the Display to the canvas
  void display() {
    noStroke();
    fill(c);
    rect(this.pos.x, this.pos.y, this.w, this.h);
  }
  
  
  // This method will display some string to the screen
  void display_text(String s) {
    textAlign(CENTER);
    textSize(18);
    fill(0);
    text(s, this.pos.x + this.w/2, this.pos.y + this.h/2 + 6);
  }
  
  
  
}