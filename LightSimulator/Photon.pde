// The leading part of a ray
public class Photon{
  PVector pos;
  PVector heading;
  
  void update(){
    pos = pos.add(heading);
  }
}
