import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/entities/tournament.dart';
import '../data/repositories/tournament_repository.dart';



class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var tournaments = TournamentRepository.getTournaments();
    
    return  Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: tournaments.length,
          itemBuilder: (BuildContext context, int index) => createListTileItem
          (context,tournaments[index]),
          separatorBuilder: (_, __) => const Divider(),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          physics: const BouncingScrollPhysics(),
        ),
      ),
      
    );
  }

  createListTileItem(BuildContext context, Tournament tournament) => ListTile(
    leading:  const Icon(Icons.catching_pokemon),
    title: Text(tournament.name),
    subtitle: Text('Match Day: ${tournament.matchday}'),
    trailing: createTrailingItem(tournament),
    //onTap: () => displayDialog(context, tournament)
    onTap: () => Platform.isAndriod displayDialogAndroid(context, tournament),
  );

  FadeInImage createTrailingItem(Tournament tournament) {
    return FadeInImage.assetNetwork(
    placeholder: 'images/loading.gif',
    image: tournament.urlprofile,
    fit: BoxFit.cover,
    width: 100,
    height: double.infinity,
     
     );
  }
  
  displayDialog(BuildContext context, Tournament tournament) => 
  showDialog(
    barrierDismissible: true,
    barrierColor: Colors.purple,
    context: context,
    builder:  (context) =>  AlertDialog(
      title: const Text ('Tournament'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(tournament.name),
          SizedBox(height: 10),
          FadeInImage.assetNetwork(
            placeholder: 'images/loading.gif', image: tournament.urlprofile
            )

        ], 

      ),

      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'cancel',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
           child: const Text('ok')
          )
      ],
    )
  );
  
  displayDialogAndroid(BuildContext context, Tournament tournament) => showCupertinoDialog(
    context: context, 
    builder: (context) => 
    );
}


