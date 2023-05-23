public class Ray{
  // All of the real portions of the ray
  Line[] real;
  
  // All of the virtual portions of the ray
  Line[] virtual;
  
  PVector start;
  
  // The ray lacks a heading since that's contained in the photon
  Photon lead;
  
  Ray(){
    real = new Line[0];
    virtual = new Line[0];
    
    start = new PVector(0,0);
    lead = new Photon();
  }
  
  Ray(PVector start, PVector heading){
    real = new Line[0];
    virtual = new Line[0];
    
    this.start = start;
    lead = new Photon(start, heading);
  }
  
  // Changes the direction the photon is going, used by Object.reflect() and Object.refract()
  // Also creates a new set of virtual and real lines to represent the changing of the ray.
  void changeHeading(){
  }
}
