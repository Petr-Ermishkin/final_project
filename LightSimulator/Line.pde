public class Line{
  PVector start;
  // changes continously as the line gets drawn
  PVector end;
  
  Line(){
    start = new PVector(0,0);
    end = new PVector(0,0);
  }
  
  Line(PVector start){
    this.start = start;
    end = start;

  }
  
  void update(PVector newEnd){
    end = newEnd;
    drawLine();
    
  }
  
  void drawLine(){
    line(start.x, start.y, end.x, end.y);
  }
}
