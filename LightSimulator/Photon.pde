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
  
  void update(){
    pos = pos.add(heading);
  }
  
}
