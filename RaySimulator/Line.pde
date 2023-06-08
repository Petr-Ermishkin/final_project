public class Line{
  private PVector start;
  
  // changes continously as the line gets drawn
  private PVector end;
  
  Line(){
    start = new PVector(0,0);
    end = new PVector(0,0);
  }
  
  Line(PVector start){
    this.start = new PVector(start.x, start.y);
    end = new PVector(start.x, start.y);

  }
  
  void update(PVector newEnd){
    end = new PVector(newEnd.x, newEnd.y);    
  }
  
  void drawLine(){
    line(start.x, start.y, end.x, end.y);
  }
}
