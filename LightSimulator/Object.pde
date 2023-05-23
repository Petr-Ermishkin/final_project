public class Object {
  PVector pos;
  int objWidth;
  int objHeight;
  
  // If both are false, the ray is absorbed.
  // Currently they are mutually exclusive for the sake of simplicity. Potential for partial reflection / refraction in the future.
  Boolean isReflective;
  Boolean isRefractive;
  double indexOfRefraction;
  
  Object(){
    pos = new PVector();
    // to be finished
  }
  
  void Reflect(Ray ray){
  }
  
  void Refract(Ray ray){
  }
}
