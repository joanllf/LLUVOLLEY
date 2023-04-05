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

void insertCategoria(String nom){
  String sNom = nom.replace("\'", "\\'");
  String q = "INSERT INTO `categoría` (`idcategoría`, `nomcategoria`) VALUES (NULL, '"+sNom+"')";
  println(q);
  msql.query(q);
}

void insertUsuario(String us, String pw){
  String q ="INSERT INTO `usuario` (`idusuario`, `pwusuario`) VALUES ('"+us+"', '"+pw+"')";
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
  msql.query( "SELECT j.idjugador AS id, j.nomjugador AS nom, j.altura AS altura, j.edad AS edad, p.nomposicio AS posicio FROM jugador j, posición p WHERE j.posición_idposición=p.idposición" );
  while (msql.next()){
      data[nr][0] = msql.getString("nom");
      data[nr][1] = String.valueOf(msql.getInt("id"));
      data[nr][2] = msql.getString("posicio");
      data[nr][3] = String.valueOf(msql.getFloat("altura"));
      data[nr][4] = String.valueOf(msql.getInt("edad"));
      nr++;
  }
  return data;
}

String[] getInfoTaulaCategoria(){
  
  int numRows = getNumRowsTaula("categoría");
  
  String[] data = new String[numRows];
  
  int nr=0;
  msql.query( "SELECT nomcategoria FROM `categoría` WHERE 1;" );
  while (msql.next()){
    data[nr] = msql.getString("nomcotegoria");
    nr++;
  }
  return data;
}
