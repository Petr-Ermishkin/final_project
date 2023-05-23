public class Ray{
  // All of the real portions of the ray
  Line[] real;
  int curLine;
  
  // All of the virtual portions of the ray
  Line[] virtual;
  
  PVector start;
  
  // The ray lacks a heading since that's contained in the photon
  Photon photon;
  
  Ray(){
    real = new Line[0];
    virtual = new Line[0];
    curLine = 0;
    
    start = new PVector(0,0);
    photon = new Photon();
  }
  
  Ray(PVector start, float angle){
    real = new Line[1];
    virtual = new Line[0];
    curLine = 0;
    
    this.start = start;
    photon = new Photon(start, angle);
    real[0] = new Line(start);
  }
  
  void update(){
    photon.update();
    // the photon's new position is used as the end position for the line update
    real[curLine].update(photon.pos);
  }
  
  // Changes the direction the photon is going, used by Object.reflect() and Object.refract()
  // Also creates a new set of virtual and real lines to represent the changing of the ray.
  void changeHeading(){
  }
}
