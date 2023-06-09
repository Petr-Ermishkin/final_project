// This is a static class used to do processing on angles
public static class Angle{
  
  // 
  static float validateAngle(float angle){
    // Eliminates angles greater than 2*PI
    while(angle >= 2 * PI)
      angle -= 2 * PI;
    // Eliminates angles less than -2*PI and negative angles
    while(angle < 0)
      angle += 2 * PI; // e.g. -370 > -10 > 350
    return angle;
  }
  
  // Returns the quadrant that a given angle is in
  // only accepts values between [0, 2PI)
  static int quadrant(float angle){
    if(angle >= 0 && angle < PI / 2)
      return 1;
    if(angle >= PI / 2 && angle < PI)
      return 2;
    if(angle >= PI && angle < 3 * PI / 2)
      return 3;
    else
      return 4;
  }
}
