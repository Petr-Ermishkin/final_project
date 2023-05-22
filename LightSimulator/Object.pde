public class Object {
  PVector pos;
  double indexOfRefraction;
  
  // If both are false, the ray is absorbed.
  // Currently they are mutually exclusive for the sake of simplicity. Potential for partial reflection / refraction in the future.
  Boolean isReflective;
  Boolean isRefractive;
  
  void Reflect(Ray ray){
  }
  
  void Refract(Ray ray){
  }
}
