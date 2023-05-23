// The leading part of a ray
  public class Photon{
  PVector pos;
  PVector heading;
  
  Photon(){
    pos = new PVector(0,0);
    heading = new PVector(0,0);
  }
  
  Photon(PVector pos, PVector heading){
    this.pos = pos;
    this.heading = heading;
  }
  
  // The angle has to be in radians
  Photon(PVector pos, float angle){
    this.pos = pos;
    heading = new PVector(cos(angle), sin(angle));
  }
  
  void update(){
    pos = pos.add(heading);
  }
  
}
