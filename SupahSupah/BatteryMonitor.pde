// This will be the monitor of the battery displayed on the controller. it will contain an ArrayList of BatteryPercentage's that will be updated every x amount of frames

class BatteryMonitor {
 private PVector pos = new PVector();
 private float w;
 private float h;
 private int refresh_rate = 30;
 private int number_of_percentages = 60;
 ArrayList<BatteryPercentage> battery_percentages = new ArrayList<BatteryPercentage>();
 
 
 BatteryMonitor(float x, float y, float w, float h) {
  this.pos.x = x;
  this.pos.y = y;
  this.w = w;
  this.h = h;
 
 }
 
 
 // This method will display the monitor
 void display() {
   fill(241);
   stroke(0);
   rect(this.pos.x, this.pos.y, this.w, this.h);
   
   
   // Only update values if the refresh rate matches
   if (frameCount % refresh_rate == 0) {
    this.update_values();
   }
   
  this.display_graph(); 
 }
 
 
 
 // This will display the graph
 private void display_graph() {
   beginShape();
   for (int i = 0; i < battery_percentages.size(); i++) {
    float w = map(i, 0, battery_percentages.size(), 0, this.w);
    float h = battery_percentages.get(i).get_height();
    vertex(w, h);
    
   }
   endShape(CLOSE);
 }
 
 
 
 
 // This will update the values of the graph
 private void update_values() {
   // first populate the array
   if (battery_percentages.size() < number_of_percentages) {
     battery_percentages.add(new BatteryPercentage(sp.battery_percentage(), BatteryMonitor.this));
     return;
   }
   
   // delete the last element and add a new with the new battery percentage updated
   battery_percentages.remove(battery_percentages.size());
   battery_percentages.add(new BatteryPercentage(sp.battery_percentage(), BatteryMonitor.this));
 }
}