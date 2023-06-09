// For a rectangle, pos represents the upper right corner, 
// height and width are self explanatory

public class Rectangle extends Object{
  int leftBound, rightBound, topBound, bottomBound;
  
   Rectangle(PVector pos, int objWidth, int objHeight, boolean isReflective, color objColor){
    super(pos, objWidth, objHeight, isReflective, objColor);
    leftBound = int(pos.x);
    rightBound = int(pos.x + objWidth);
    topBound = int(pos.y);
    bottomBound = int(pos.y + objHeight);
  }
  
  // checks if the ray has hit the object and returns the angle of the normal of the surface that was hit
  // As a simple fix, it also reverses the x / y direction to make simple reflection happen until better reflection
  // is implemented
  Float hitDirection(Ray ray){
    if(!(int(ray.photon.pos.x) >= leftBound && int(ray.photon.pos.x) <= rightBound && int(ray.photon.pos.y) >= topBound && int(ray.photon.pos.y) <= bottomBound))
      return null;
    if(int(ray.photon.pos.x) == leftBound){
      ray.photon.heading.x = -ray.photon.heading.x;
      return PI;
    }
    if(int(ray.photon.pos.x) == rightBound){
      ray.photon.heading.x = -ray.photon.heading.x;
      return float(0);
    }
    if(int(ray.photon.pos.y) == topBound){
      ray.photon.heading.y = -ray.photon.heading.y;
      return PI / 2;
    }
    if(int(ray.photon.pos.y) == bottomBound){
      ray.photon.heading.y = -ray.photon.heading.y;
      return 3 * PI / 2;
    }
    return null;
    
  }
  
  void drawObj(){
    fill(objColor);
    rect(pos.x, pos.y, objWidth, objHeight);
  }
  
}
