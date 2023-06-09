public abstract class Object {
  PVector pos;
  int objWidth;
  int objHeight;
  color objColor;
  
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
    objColor = color(0,0,0);
  }
  
  Object(PVector pos, int objWidth, int objHeight, boolean isReflective, color objColor){
    this.pos = pos;
    this.objWidth = objWidth;
    this.objHeight = objHeight;
    this.isReflective = isReflective;
    this.objColor = objColor;
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
    // currently does not work as intended, relies on hitDirection to handle the actual reflection
    //float newAngle = normal;
    //ray.photon.validateAngle();
    //ray.changeHeading(ray.photon.angle);
    ray.addLine();
  }
  
  void refract(Ray ray, float angle){
  }
}
