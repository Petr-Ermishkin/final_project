Ray[] rays = new Ray[] {new Ray(new PVector(500, 250), 0), 
new Ray(new PVector(500, 250), PI / 3),
new Ray(new PVector(500, 250), -PI / 6)};

//rays[0] = new Ray(new PVector(500, 250), -PI * 2 / 3);
//rays[1] = new Ray(new PVector(500, 250), -PI / 4);
//rays[2] = new Ray(new PVector(500, 250), -11*PI / 6);
Object rect = new Rectangle(new PVector(550, 00), 50, 550, true);

// Eventually try to implement an object that acts as the bounds of the simulation
//Object bounding = new Rectangle(new PVector(0,0), 1000, 500, true);


// Driver, contains all of the simulator versions, user interaction, and updates for everything
void setup(){
  size(1000,500);
  background(255,255,255);
}

void draw(){
  rect.drawObj();
  //bounding.drawObj();
  for(Ray ray: rays){
    rect.hit(ray);
    //bounding.hit(ray);
    ray.update();
  }
  //r.update();
  //r2.update();
  //r3.update();
}

void mouseClicked(){
  //r.changeHeading(1,-1);
  //r2.changeHeading(-1,1);
  //r3.changeHeading(1,-1);
}
