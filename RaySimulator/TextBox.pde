public class TextBox{
  int x;
  int y;
  int size;
  String text;
  boolean isBlack;
  
  TextBox(int x, int y, int size, String text, boolean isBlack){
    this.x = x;
    this.y = y;
    this.size = size;
    this.text = text;
    this.isBlack = isBlack;
  }
  
  void drawText(){
    if(isBlack)
      fill(0,0,0);
    else
      fill(255,255,255);
    textSize(size);
    text(text, x, y);
  }
}
