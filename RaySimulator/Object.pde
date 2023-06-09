public abstract class Object {
  PVector pos;
  int objWidth;
  int objHeight;
  color objColor;
  
  Object(){
    pos = new PVector(0,0);
    objWidth = 0;
    objHeight = 0;
    objColor = color(0,0,0);
  }
  
  Object(PVector pos, int objWidth, int objHeight, color objColor){
    this.pos = pos;
    this.objWidth = objWidth;
    this.objHeight = objHeight;
    this.objColor = objColor;
  }
  
  abstract void drawObj();
  
  abstract Float hitDirection(Ray ray);
  
  
  void hit(Ray ray){
    Float normal = hitDirection(ray);
    if(normal == null)
      return;
    reflect(ray, normal); 
  }
  
  // The angle represents the angle of the normal of the surface which the ray hit
  void reflect(Ray ray, float normal){
    // currently does not work as intended, relies on hitDirection to handle the actual reflection
    //float newAngle = normal;
    //ray.photon.validateAngle();
    //ray.changeHeading(ray.photon.angle);
    ray.addLine();
  }
  
}
