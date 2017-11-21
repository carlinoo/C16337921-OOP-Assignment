// This will represent the battery percentage that willl be shown on the battery monitor as an array

class BatteryPercentage {
  private float percentage;
  
  BatteryPercentage(float battery) {
   this.percentage = battery;
  }
  
  
  // This will get the percentage of the BatteryPercentage
  float battery() {
    return this.percentage;
  }
}