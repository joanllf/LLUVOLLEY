//Clase PagedTable

class PagedTable {

  String[] tableHeaders;   // Titulos de las columnas
  String[][] tableData;    // Información de la tabla
  float[] columnWidths;    // ancho de las columnas

  int numCols, numRows;  // Número de fileras y columnas

  int numPage;
  int numTotalPages;

  // Constructor
  PagedTable(int nr, int nc) {
    this.numRows = nr;
    this.numCols = nc;
    this.numPage = 0;
  }

  // Setters
  void setHeaders(String[] h) {
    this.tableHeaders = h;
  }

  void setData(String[][] d) {
    this.tableData = d;
    if (d.length % (this.numRows-1)==0) {
      this.numTotalPages = (d.length / (this.numRows-1)) -1;
    } else {
      this.numTotalPages = (d.length / (this.numRows-1)) ;
    }
  }

  void setValueAt(String value, int nr, int nc) {
    this.tableData[nr][nc] = value;
  }

  void setColumnWidths(float[] w) {
    this.columnWidths = w;
  }

  void nextPage() {
    if (this.numPage<this.numTotalPages) {
      this.numPage++;
    }
  }

  void prevPage() {
    if (this.numPage>0) {
      this.numPage--;
    }
  }

  // Dibuja taula
  void display(float x, float y, float w, float h) {

    pushStyle();

    fill(getColorAt(6), 230);
    stroke(0);
    strokeWeight(3);
    rect(x, y, w, h);

    float rowHeight = h / numRows;
    fill(getColorAt(1));
    stroke(0);
    strokeWeight(3);
    rect(x, y, w, rowHeight - 30);

    // Dibuja filas
    stroke(0);
    for (int r = 1; r <numRows; r++) {
      if (r==1) {
        strokeWeight(3);
      } else {
        strokeWeight(1);
      }
      line(x, y + r*rowHeight - 30, x + w, y + r*rowHeight - 30);
    }

    // Dibuja Columnas
    float xCol = x;
    for (int c = 0; c<numCols; c++) {
      xCol += w*columnWidths[c]/100.0;
      line(xCol, y, xCol, y + h);
    }

    // Dibuja textos
    fill(0);
    textSize(24);
    for (int r = 0; r < numRows; r++) {
      xCol = x;
      for (int c = 0; c< numCols; c++) {
        if (r==0) {
          textFont(getFontAt(1));
          textSize(28);
          text(tableHeaders[c], xCol + 10, y + (r+1)*rowHeight - 40);
        } else {
          int k = (numRows-1)*numPage + (r-1);
          if (k<tableData.length) {
            textFont(getFontAt(0));
            textSize(24);
            text(tableData[k][c], xCol + 10, y + (r+1)*rowHeight - 40);
          }
        }
        xCol += w*columnWidths[c]/100.0;
      }
    }

    // Información de la Página
    fill(getColorAt(5));
    text("Pag: "+(this.numPage+1)+" / "+(this.numTotalPages+1), x, y + h + 50);

    popStyle();
  }
}
