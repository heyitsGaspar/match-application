
import '../../core/entities/tournament.dart';

class TournamentRepository{
  static List<Tournament> getTournaments() => 
  List.generate(20, 
  (index) => Tournament(
    id: index+1, 
    name: 'torneo${index + 1}', 
    urlprofile: 'https://cdn.pixabay.com/photo/2014/10/14/20/24/ball-488717_1280.jpg', 
    matchday: 'Saturday')
    
    
    
    );

  

}