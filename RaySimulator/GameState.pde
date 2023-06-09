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
    if(presetNum == 1){
      objects.add(new Rectangle(new PVector(0, 0), width -1, height -1, true, color(255,255,255)));
    }
    if(presetNum == 2){
      objects.add(new Rectangle(new PVector(0, 0), width/2, height -1, true, color(255,255,255)));
      objects.add(new Rectangle(new PVector(width/2,0), width-1, height-1, true, color(0,0,0)));
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
