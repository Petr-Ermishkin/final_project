ArrayList<Ray> rays = new ArrayList<Ray>(); 

ArrayList<Object> objects = new ArrayList<Object>();



// Driver, contains all of the simulator versions, user interaction, and updates for everything
void setup(){
  size(1000,500);
  background(255,255,255);
  objects.add(new Rectangle(new PVector(0, 0), width -1, height -1, true));
  //rays.add(new Ray(new PVector(300,200), -PI / 4));
  
}

void draw(){
  background(255,255,255);
  fill(120,180,255);
  for(Object obj: objects){
    obj.drawObj();
    
  }
  for(Ray ray: rays){
    ray.update();
    
    for(Object obj: objects){
      obj.hit(ray);
    }
    ray.drawRay();
  }
  
  
}

void keyPressed(){
  if(key == 'R' || key == 'r'){
    rays = new ArrayList<Ray>(); 
    objects = new ArrayList<Object>();
    background(255,255,255);
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
    // fix this! So ugly and inefficient!
    Object lastObject = objects.get(objects.size() - 1);
    objects.set(objects.size() - 1, new Rectangle(new PVector(lastObject.pos.x, lastObject.pos.y), int(mouseX - lastObject.pos.x), int(mouseY - lastObject.pos.y), true)) ;
  }
  else{
    // the most recently added ray (the one made by mousePressed)
    Ray lastRay = rays.get(rays.size() - 1);
    lastRay.setHeading(atan2(mouseY - lastRay.photon.pos.y , mouseX - lastRay.photon.pos.x));
  }
}
