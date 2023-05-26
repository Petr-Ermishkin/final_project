public class Ray{
  // All of the real portions of the ray
  ArrayList<Line> real;
  int currentReal;
  
  // All of the virtual portions of the ray
  ArrayList<Line> virtual;
  
  PVector start;
  
  // The ray lacks a heading since that's contained in the photon
  Photon photon;
  
  Ray(){
    real = new ArrayList<Line>();
    currentReal = 0;
    virtual = new ArrayList<Line>();
    
    
    start = new PVector(0,0);
    photon = new Photon();
  }
  
  Ray(PVector start, float angle){
    real = new ArrayList<Line>();
    virtual = new ArrayList<Line>();
    currentReal = 0;
    
    this.start = start;
    photon = new Photon(start, angle);
    real.add(new Line(start));
  }
  
  void update(){
    photon.update();
    // the photon's new position is used as the end position for the line update
    real.get(currentReal).update(photon.pos);
  }
  
  // Changes the direction the photon is going, used by Object.reflect() and Object.refract()
  // Also creates a new set of virtual and real lines to represent the changing of the ray.
  void changeHeading(float angle){
    real.add(new Line(photon.pos));
    currentReal++;
    photon.heading = new PVector(cos(angle), sin(angle));
  }
  
  void changeHeading(int xMultiplier, int yMultiplier){
    real.add(new Line(photon.pos));
    currentReal++;
    photon.heading.x = photon.heading.x * xMultiplier;
    photon.heading.y = photon.heading.y * yMultiplier;
  }
}
