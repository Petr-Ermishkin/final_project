Ray r = new Ray(new PVector(500, 250), -PI / 2);
Ray r2 = new Ray(new PVector(500, 250), -PI / 4);
Ray r3 = new Ray(new PVector(500, 250), -PI / 6);


// Driver, contains all of the simulator versions, user interaction, and updates for everything
void setup(){
  size(1000,500);
  background(255,255,255);
}

void draw(){
  r.update();
  r2.update();
  r3.update();
}
