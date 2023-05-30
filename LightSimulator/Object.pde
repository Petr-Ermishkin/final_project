public abstract class Object {
  PVector pos;
  int objWidth;
  int objHeight;
  
  // If both are false, the ray is absorbed.
  // Currently they are mutually exclusive for the sake of simplicity. Potential for partial reflection / refraction in the future.
  boolean isReflective;
  //Boolean isRefractive;
  //double indexOfRefraction;
  
  Object(){
    pos = new PVector(0,0);
    objWidth = 0;
    objHeight = 0;
    isReflective = false;
  }
  
  Object(PVector pos, int objWidth, int objHeight, boolean isReflective){
    this.pos = pos;
    this.objWidth = objWidth;
    this.objHeight = objHeight;
    this.isReflective = isReflective;
  }
  
  abstract void drawObj();
  
  abstract Float hitDirection(Ray ray);
  
  
  void hit(Ray ray){
    Float normal = hitDirection(ray);
    if(normal == null)
      return;
      
     if(isReflective){
       reflect(ray, normal);
     }
      
    
  }
  
  // The angle represents the angle of the normal of the surface which the ray hit
  void reflect(Ray ray, float normal){
    // currently does not work as intended
    float newAngle = normal - ray.photon.angle;
    ray.changeHeading(newAngle);
  }
  
  void refract(Ray ray, float angle){
  }
}
