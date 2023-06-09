String[] presetNames = new String[]{"Description", "Sandbox", "Mirror", "Maze"};
int presetNum = 1;
GameState gameState;

//ArrayList<Ray> rays = new ArrayList<Ray>(); 

//ArrayList<Object> objects = new ArrayList<Object>();



// Driver, contains all of the simulator versions, user interaction, and updates for everything
void setup(){
  size(1000,500);
  background(255,255,255);
  gameState = new GameState(presetNum);
  //objects.add(new Rectangle(new PVector(0, 0), width -1, height -1, true, color(255,255,255)));
}

void draw(){
  background(255,255,255);
  gameState.drawAll();
  gameState.update();
  
  //for(Object obj: objects){
  //  obj.drawObj();
    
  //}
  //for(Ray ray: rays){
  //  ray.update();
    
  //  for(Object obj: objects){
  //    obj.hit(ray);
  //  }
  //  ray.drawRay();
  //}
  
  
}

void keyPressed(){
  if(key == 'R' || key == 'r'){
    gameState = new GameState(presetNum);
    background(255,255,255);
  }
  if(key == '0' || key == '1' || key == '2' || key == '3' ){
    presetNum = Character.getNumericValue(key);
    gameState = new GameState(presetNum);
  }
}

void mouseClicked(){
  if(mouseButton == RIGHT)
    for(float theta = 0; theta < 2*PI; theta += PI / 6){
      gameState.rays.add(new Ray(new PVector(mouseX, mouseY), theta));
    }
}

void mousePressed(){
  if(mouseButton != LEFT)
    return;
  if(keyPressed && keyCode == SHIFT){
    gameState.objects.add(new Rectangle(new PVector(mouseX, mouseY), 0, 0, true, color(120,180,255)));
  }
  else
    gameState.rays.add(new Ray(new PVector(mouseX, mouseY)));
}

void mouseReleased(){
  if(mouseButton != LEFT)
    return;
  if(keyPressed && keyCode == SHIFT){
    // fix this! So ugly and inefficient!
    Object lastObject = gameState.objects.get(gameState.objects.size() - 1);
    gameState.objects.set(gameState.objects.size() - 1, new Rectangle(new PVector(lastObject.pos.x, lastObject.pos.y), int(mouseX - lastObject.pos.x), int(mouseY - lastObject.pos.y), true, lastObject.objColor));
  }
  else{
    // the most recently added ray (the one made by mousePressed)
    Ray lastRay = gameState.rays.get(gameState.rays.size() - 1);
    lastRay.setHeading(atan2(mouseY - lastRay.photon.pos.y , mouseX - lastRay.photon.pos.x));
  }
}
