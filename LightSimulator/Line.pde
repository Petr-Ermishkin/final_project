public class Line{
  PVector start;
  PVector end;
  // Not sure if we actually need slope, delete later if not used
  double slope;
  
  Line(){
    start = new PVector(0,0);
    end = new PVector(0,0);
    slope = 0;
  }
  
  Line(PVector start, PVector heading){
    this.start = start;
    end = start;
    slope = heading.y / heading.x;
  }
  
  void update(PVector newEnd){
    end = newEnd;
    drawLine();
    
  }
  
  void drawLine(){
    line(start.x, start.y, end.x, end.y);
  }
}
