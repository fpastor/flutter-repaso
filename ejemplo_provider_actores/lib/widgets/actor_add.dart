import 'package:ejemplo_provider_actores/actor.dart';
import 'package:ejemplo_provider_actores/provider/actor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActorAdd extends StatelessWidget {
  ActorAdd({
    super.key,
  });

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final ageController = TextEditingController();
  final bestMovieController = TextEditingController();
  final photoUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final actorList = context.watch<ActorProvider>();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(label: Text("Name")),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: surnameController,
            decoration: const InputDecoration(label: Text("Surname")),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: ageController,
            decoration: const InputDecoration(label: Text("Age")),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: bestMovieController,
            decoration: const InputDecoration(label: Text("Best Movie")),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: photoUrlController,
            decoration: const InputDecoration(label: Text("Cover URL")),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => {
                    actorList.addActor(Actor(
                        nameController.text,
                        surnameController.text,
                        int.parse(ageController.text),
                        bestMovieController.text,
                        photoUrlController.text))
                  },
              child: const Text("Add actor"))
        ],
      ),
    );
  }
}
