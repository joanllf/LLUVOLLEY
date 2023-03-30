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
  String q ="INSERT INTO `jugador` (`idjugador`, `nomjugador`, `altura`, `dorsal`, `edad`, `posición_idposición`, `equipo_idequipo`) VALUES (NULL, "+nombre+", '"+altura+"', '"+dorsal+"', '"+edad+"', '"+posicion+"', '')";
  println(q);
  msql.query(q);
}

// Obté el número de files de la taula
int getNumRowsTaula(String nomTaula){
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}
  
// Obté informació de la taula Unitat
String[][] getInfoTaulaUnitat(){
  
  int numRows = getNumRowsTaula("unitat");
  
  String[][] data = new String[numRows][2];
  
  int nr=0;
  msql.query( "SELECT * FROM unitat" );
  while (msql.next()){
      data[nr][0] = String.valueOf(msql.getInt("numero"));
      data[nr][1] = msql.getString("nom");
      nr++;
  }
  return data;
}

// Obté array am camp nom de la taula Unitat
String[] getNomsTaulaUnitat(){
  
  int numRows = getNumRowsTaula("unitat");
  
  String[] data = new String[numRows];
  
  int nr=0;
  msql.query( "SELECT nom FROM unitat" );
  while (msql.next()){
      data[nr] = msql.getString("nom");
      nr++;
  }
  return data;
}
