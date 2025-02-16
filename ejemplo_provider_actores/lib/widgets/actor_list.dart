import 'package:ejemplo_provider_actores/provider/actor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActorList extends StatelessWidget {
  const ActorList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final actorList = context.watch<ActorProvider>();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: actorList.getActorListLenght(),
          itemBuilder: (BuildContext buildContext, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Column(
                children: [
                  SizedBox(
                      height: 128,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                              actorList.getActorAt(index).photoUrl))),
                  Text(
                      "${actorList.getActorAt(index).name} ${actorList.getActorAt(index).surname}"),
                  Text('${actorList.getActorAt(index).age} años'),
                  Text("Best Movie: ${actorList.getActorAt(index).bestMovie}"),
                  IconButton(
                      onPressed: () => {actorList.removeActorAt(index)},
                      icon: const Icon(Icons.delete))
                ],
              ),
            );
          }),
    );
  }
}
