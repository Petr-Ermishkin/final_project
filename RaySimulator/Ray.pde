public class Ray{
  ArrayList<Line> lines;
  int currentLine;
  
  // The ray lacks a heading since that's contained in the photon
  private Photon photon;
  
  // This version of the constructor is used by mousepressed() in order to create a ray whoose
  // heading / angle isn't yet established
  Ray(PVector start){
    lines = new ArrayList<Line>();
    currentLine = 0;
    
    
    photon = new Photon(start, new PVector(0,0));
    lines.add(new Line(start));
  }
  
  
  Ray(PVector start, float angle){
    lines = new ArrayList<Line>();
    //virtual = new ArrayList<Line>();
    currentLine = 0;
    
    //this.start = start;
    photon = new Photon(start, angle);
    lines.add(new Line(start));
  }
  
  void update(){
    photon.update();
    // the photon's new position is used as the end position for the line update
    lines.get(currentLine).update(photon.pos);
  }
  
  // used by mouseReleased
  void setHeading(float angle){
    photon.heading = new PVector(cos(angle), sin(angle));
    photon.angle = atan2(photon.heading.y - photon.pos.y , photon.heading.x - photon.pos.x);
  }
  
  // Changes the direction the photon is going, used by Object.reflect() and Object.refract()
  // Also creates a new set of virtual and lines lines to represent the changing of the ray.
  //void changeHeading(float angle){
  //  lines.add(new Line(photon.pos));
  //  currentLine++;
  //  photon.heading = new PVector(cos(angle), sin(angle));
  //  photon.angle = atan2(photon.heading.y - photon.pos.y , photon.heading.x - photon.pos.x);
  //}
  
  void addLine(){
    lines.add(new Line(photon.pos));
    currentLine++;
  }
  
  void drawRay(){
    for(Line line: lines){
      line.drawLine();
    }
  }

}
