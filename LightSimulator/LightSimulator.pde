ArrayList<Ray> rays = new ArrayList<Ray>(); 

ArrayList<Object> objects = new ArrayList<Object>();

Object rect = new Rectangle(new PVector(550, 00), 50, 550, true);

// Eventually try to implement an object that acts as the bounds of the simulation
//Object bounding = new Rectangle(new PVector(0,0), 1000, 500, true);


// Driver, contains all of the simulator versions, user interaction, and updates for everything
void setup(){
  size(1000,500);
  background(255,255,255);
  
  //rays.add(new Ray(new PVector(500, 250), 0));
  //rays.add(new Ray(new PVector(500, 250), - PI / 6));
  //rays.add(new Ray(new PVector(500, 250), -11* PI / 6));
  
  //objects.add(new Rectangle(new PVector(550, 00), 50, 550, true));
  //objects.add(new Rectangle(new PVector(300, 00), 50, 550, true));
}

void draw(){
  for(Object obj: objects){
    obj.drawObj();
  }
  
  //bounding.drawObj();
  for(Ray ray: rays){
    for(Object obj: objects){
      obj.hit(ray);
    }
    rect.hit(ray);
    //bounding.hit(ray);
    ray.update();
  }
}

void mousePressed(){
  if(keyPressed && keyCode == SHIFT){
    objects.add(new Rectangle(new PVector(mouseX, mouseY), 0, 0, true));
  }
  else
    rays.add(new Ray(new PVector(mouseX, mouseY)));
}

void mouseReleased(){
  if(keyPressed && keyCode == SHIFT){
    Object lastObject = objects.get(objects.size() - 1);
    lastObject.objWidth = int(mouseX - lastObject.pos.x);
    lastObject.objHeight = int(mouseY - lastObject.pos.y);
  }
  else{
    // the most recently added ray (the one made by mousePressed)
    Ray lastRay = rays.get(rays.size() - 1);
    lastRay.changeHeading(atan2(mouseY - lastRay.photon.pos.y , mouseX - lastRay.photon.pos.x));
  }
}
