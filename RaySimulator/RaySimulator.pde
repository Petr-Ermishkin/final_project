String[] presetNames = new String[]{"Description", "Sandbox", "Mirror"};
int presetNum = 0;
GameState gameState;

// Used to validate user inputs involving shift. True when shift was held when mouse was previously pressed.
boolean lastShift = false;

Ray tempOne;
Ray tempTwo;

float[] angleMultipliers = new float[] {1, 2.0/3.0, 1.0/3.0, 1.0/4.0, 1.0/6.0, 1.0/12.0, 1.0/24.0, 1.0/48.0};
int currentMultiplier = 5;


// Driver, contains all of the simulator versions, user interaction, and updates for everything
void setup(){
  size(1000,500);
  background(255,255,255);
  gameState = new GameState(presetNum);
}

void draw(){
  background(255,255,255);
  gameState.drawAll();
  gameState.update();
}

void keyPressed(){
  if(key == '=' || key == '+' && currentMultiplier < 6)
    currentMultiplier++;
  if(key == '-' && currentMultiplier > 0)
    currentMultiplier--;
  if(key == 'R' || key == 'r'){
    gameState = new GameState(presetNum);
    background(255,255,255);
  }
  if(key == '0' || key == '1' || key == '2'){
    presetNum = Character.getNumericValue(key);
    gameState = new GameState(presetNum);
  }
}

void mouseClicked(){
  if(mouseButton == RIGHT){
    boolean isBlack = true;
      if(presetNum == 2)
        isBlack = mouseX < width / 2;
    for(float theta = 0; theta < 2*PI; theta += PI * angleMultipliers[currentMultiplier]){
      gameState.rays.add(new Ray(new PVector(mouseX, mouseY), theta, isBlack));
    }
    if(presetNum == 2){
      for(float theta = 0; theta < 2*PI; theta += PI * angleMultipliers[currentMultiplier]){
        gameState.rays.add(new Ray(new PVector(width - mouseX, height - mouseY), theta, !isBlack));
    }
    }
  }
}

void mousePressed(){
  if(mouseButton != LEFT)
    return;
  if(keyPressed && keyCode == SHIFT){
    gameState.objects.add(new Rectangle(new PVector(mouseX, mouseY), 0, 0, color(120,180,210)));
    lastShift = true;
  }
  else{
    boolean isBlack = true;
      if(presetNum == 2)
        isBlack = mouseX < width / 2;
    tempOne = new Ray(new PVector(mouseX, mouseY), isBlack);
    if(presetNum == 2){
      tempTwo = new Ray(new PVector(width - mouseX, height - mouseY), !isBlack);
    }
  }
}

void mouseReleased(){
  if(mouseButton != LEFT)
    return;
  if(keyPressed && keyCode == SHIFT && lastShift){
      // fix this! So ugly and inefficient!
      Object lastObject = gameState.objects.get(gameState.objects.size() - 1);
      gameState.objects.set(gameState.objects.size() - 1, new Rectangle(new PVector(lastObject.pos.x, lastObject.pos.y), int(mouseX - lastObject.pos.x), int(mouseY - lastObject.pos.y), lastObject.objColor));
      lastShift = false;
  }
  else{
    if(!lastShift){
    gameState.rays.add(tempOne);
    tempOne.setHeading(atan2(mouseY - tempOne.photon.pos.y , mouseX - tempOne.photon.pos.x));
      if(presetNum == 2){
        gameState.rays.add(tempTwo); 
        tempTwo.setHeading(atan2(mouseY - tempOne.photon.pos.y , mouseX - tempOne.photon.pos.x) + PI);
      }
    }
    else gameState.objects.remove(gameState.objects.size()-1);
  }
}
