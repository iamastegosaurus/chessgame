class ChessPiece {
  
  int x, y;
  char side;
  String type = new String();
  boolean selected;
  int shade;
  int basecolor = 150;
  int highlight = 50;
  
  ChessPiece(int X, int Y, char SIDE, String TYPE) {
    x = X;
    y = Y;
    side = SIDE;
    type = TYPE;
    
  }
  
  void DrawPiece() {
    if (selected == true) {
      shade = basecolor;
    } else {
      shade = basecolor + highlight;
    }
    if (side == 'w') {
      fill(shade, 0, 0);
    } else {
      fill(0, 0, shade);
    }
    
    ellipse(x+50, y+50, 90, 90);

  }

}
