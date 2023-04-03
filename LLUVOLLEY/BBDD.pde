import de.bezier.data.sql.*;

MySQL msql;

String user     = "admin";
String pass     = "12345";
String database = "voley";

void conexionBBDD(){

  msql = new MySQL(this, "localhost", database, user, pass);

 if (msql.connect()){
      // La connexió s'ha establert correctament
      println("Connexió establerta :)");
    }
    else {
      // La connexió ha fallat!!!
      println("Error de Connexió :(");
    }
}

void insertInfoTaulaCategoria(String nom){
  String sNom = nom.replace("\'", "\\'");
  String q = "INSERT INTO `categoría` (`idcategoría`, `nomcategoria`) VALUES ('', '"+sNom+"')";
  println(q);
  msql.query(q);
}

void insertUsuario(String user, String pasw){
  String q ="INSERT INTO `usuario` (`idusuario`, `pwusuario`) VALUES ('"+user+"', '"+pasw+"')";
  println(q);
  msql.query(q);
}

void insertJugador(String nombre, String altura, String dorsal, String edad, String posicion){
  String q ="INSERT INTO `jugador` (`idjugador`, `nomjugador`, `altura`, `dorsal`, `edad`, `posición_idposición`, `equipo_idequipo`) VALUES ('"+dorsal+"', '"+nombre+"', '"+altura+"', '"+dorsal+"', '"+edad+"', '"+posicion+"', 'CV Vilafranca')";
  println(q);
  msql.query(q);
}

int getNumRowsTaula(String nomTaula){
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}
 
String[][] getInfoTaulaJugador(){
  
  int numRows = getNumRowsTaula("jugador");
  
  String[][] data = new String[numRows][7];
  
  int nr=0;
  msql.query( "SELECT * FROM jugador" );
  while (msql.next()){
      data[nr][1] = String.valueOf(msql.getInt("idjugador"));
      data[nr][0] = msql.getString("nomjugador");
      data[nr][3] = String.valueOf(msql.getFloat("altura"));
      data[nr][2] = String.valueOf(msql.getInt("posición_idposición"));
      data[nr][4] = String.valueOf(msql.getInt("edad"));
      nr++;
  }
  return data;
}
