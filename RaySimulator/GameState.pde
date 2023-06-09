// This class stores the parameters of the game, including rays, objects, text, buttons(?), etc.
public class GameState{
  ArrayList<Ray> rays = new ArrayList<Ray>();
  ArrayList<Object> objects = new ArrayList<Object>();
  ArrayList<TextBox> texts = new ArrayList<TextBox>();
  
  // Determines if the player can create new rays and objects
  boolean isInteractible;
  
  String presetName;
  
  
  // The constructor takes an integer which represents the number of the preset.
  // It then uses the number to create one of a number of given presets
  GameState(int presetNum){
    presetName = presetNames[presetNum];
    
    if(presetNum == 0){
      objects.add(new Rectangle(new PVector(0, 0), width -1, height -1, color(255,255,255)));
      texts.add(new TextBox(400 , 50, 30,"Ray Simulator", true));
      texts.add(new TextBox(100 , 100, 20,"Controls: \n    0 - Title / controls screen. \n    1 - Sandbox. \n    2 - Mirror. \n    R - Resets the current environment. \n    Mouse left click and drag - Create a new ray. \n    Shift + mouse left click and drag - Create a new rectangle. \n    Right click - creates a new emitter. \n    - and + - increase or decrease the number of rays in emitters.", true));
      objects.add(new Rectangle(new PVector(700, 30), 200, 200, color(255,255,255)));
      objects.add(new Rectangle(new PVector(700, 250), 200, 200, color(255,255,255)));
      for(int i = 5; i > 0; i--){
        rays.add(new Ray(new PVector(random(701, 899), random(31, 229)), random(2*PI), true));
      }
      
      for(float theta = 0; theta < 2*PI; theta += PI / 6){
        rays.add(new Ray(new PVector(800, 350), theta, true));
      }
    }
    
    if(presetNum == 1){
      objects.add(new Rectangle(new PVector(0, 0), width -1, height -1, color(255,255,255)));
      texts.add(new TextBox(410 , 50, 30,"Sandbox", true));
    }
    
    if(presetNum == 2){
      objects.add(new Rectangle(new PVector(0, 0), width/2, height -1, color(255)));
      objects.add(new Rectangle(new PVector(width/2+1,0), width /2 -1, height-1, color(0)));
      texts.add(new TextBox(200 , 50, 30,"Mirror", true));
      texts.add(new TextBox(700 , 470, 30,"Mirror", false));
    }
  }
  
  void drawAll(){
    for(Object obj: objects){
      obj.drawObj();}
    
    for(Ray ray: rays){
      ray.drawRay();}
    
    for(TextBox textbox: texts){
      textbox.drawText();}
  }
  
  void update(){
    for(Ray ray: rays){
      ray.update();
    
      for(Object obj: objects){
        obj.hit(ray);}
    }
  }
  
}
