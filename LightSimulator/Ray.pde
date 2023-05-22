public class Ray{
  // All of the real portions of the ray
  Line[] real;
  
  // All of the virtual portions of the ray
  Line[] virtual;
  
  PVector start;
  PVector end;
  
  Photon lead;
  
  // Changes the direction the photon is going, used by Object.reflect() and Object.refract()
  void changeHeading(){
  }
}
