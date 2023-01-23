class Tournament{
  final int id;
  final String name;
  final String urlprofile;
  final String matchday;

  //parametros de tippo ordinal
  //Tournament(this.id, this.name, this.urlprofile, this.matchday);

  // parametro tipo nombrado y requerido
  Tournament({
    required this.id, 
    required this.name, 
    required this.urlprofile, 
    required this.matchday,
  });

  

}