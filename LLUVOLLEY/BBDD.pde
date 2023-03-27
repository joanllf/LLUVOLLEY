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

void insertInfoTaula(String id, String nom) {
  String q = "INSERT INTO `categoría` (`idcategoría`, `nomcategoria`) VALUES ('"+id+"', '"+nom+"')";
  println(q);
  msql.query(q);
}
