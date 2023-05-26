// For a rectangle, pos represents the upper right corner, 
// height and width are self explanatory

public class Rectangle extends Object{
  int leftBound, rightBound, topBound, bottomBound;
  
   Rectangle(PVector pos, int objWidth, int objHeight, boolean isReflective){
    super(pos, objWidth, objHeight, isReflective);
    leftBound = int(pos.x);
    rightBound = int(pos.x + objWidth);
    topBound = int(pos.y);
    bottomBound = int(pos.y + objHeight);
  }
  
  // checks if the ray has hit the object and returns the angle of the normal of the surface that was hit
  Float hitDirection(Ray ray){
    if(!(int(ray.photon.pos.x) >= leftBound && int(ray.photon.pos.x) <= rightBound && int(ray.photon.pos.y) >= topBound && int(ray.photon.pos.y) >= topBound))
      return null;
    if(int(ray.photon.pos.x) == leftBound)
      return PI;
    if(int(ray.photon.pos.x) == rightBound)
      return float(0);
    if(int(ray.photon.pos.y) == topBound)
      return PI / 2;
    if(int(ray.photon.pos.x) == bottomBound)
      return 3 * PI / 2;
    return null;
    
  }
  
  void drawObj(){
    rect(pos.x, pos.y, objWidth, objHeight);
  }
  
}
