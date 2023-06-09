public class Line{
  private PVector start;
  
  // changes continously as the line gets drawn
  private PVector end;
  
  boolean isBlack;
  
  Line(PVector start, boolean isBlack){
    this.start = new PVector(start.x, start.y);
    end = new PVector(start.x, start.y);
    this.isBlack = isBlack;

  }
  
  void update(PVector newEnd){
    end = new PVector(newEnd.x, newEnd.y);    
  }
  
  void drawLine(){
    if(isBlack)
      stroke(0);
    else
      stroke(255);
    line(start.x, start.y, end.x, end.y);
  }
}
