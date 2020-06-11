ChessPiece rook;
ChessPiece bishop;

void setup() {
  size(800, 800);
  rook = new ChessPiece(200, 0, 'w', "rook");
  bishop = new ChessPiece(300, 600, 'b', "bishop");
}

void board() {
  for (int i = 0; i < 800; i += 100) {
    for (int j = 0; j < 800; j += 100) {
      if ( (i+j) % 200 == 0) {
        fill(250); 
      } else {
        fill(0);
      }
      rect(i, j, 100, 100);
    } 
  }
}


void draw() {
  board();
  rook.DrawPiece();
  bishop.DrawPiece();

  if (mousePressed == true) {

    int x = ( (int)Math.floor(mouseX / 100) * 100);
    int y = ( (int)Math.floor(mouseY / 100) * 100);
    
    if (rook.selected == true) {
      if (x == rook.x || y == rook.y){
       rook.x = x;
       rook.y = y;
       rook.selected = false;
      }

      
    } else if (x == rook.x && y == rook.y) {
      rook.selected = true;
    }
    

    
    

  }
  
}
