// This class represents the arrow in some indicators

class Arrow {
  private float len;
  private PVector pos = new PVector();
  private float angle;
  
  // This constructor will set all the attributes of the arrow
  Arrow(float len, float x, float y, float angle) {
    this.len = len;
    this.pos.x = x;
    this.pos.y = y;
    this.angle = angle;
  }
  
  // This method will display an arrow
  void display() {
   stroke(255, 0, 0);
   strokeWeight(5);
   line(this.pos.x, this.pos.y, this.get_coordinates().x, this.get_coordinates().y);
  }
  
  
  // This method will return a PVector of the coordiantes of where the arrow is pointing at
  private PVector get_coordinates() {
    PVector pv = new PVector();
     
    float angle = radians(this.angle);
        
    pv.x = width/2 - (cos(angle) * this.len);
    pv.y = height - 150 - (sin(angle) * this.len);
    
    return pv;
  }
  
  
  
  // This method will set the angle of the arrow
  void set_angle(float angle) {
    this.angle = angle;
  }
}