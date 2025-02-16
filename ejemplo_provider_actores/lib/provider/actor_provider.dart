import 'package:ejemplo_provider_actores/actor.dart';
import 'package:flutter/material.dart';

class ActorProvider extends ChangeNotifier {
  final List<Actor> _actorList = [
    Actor("George", "Clooney", 65, "Ocean's Eleven",
        "https://www.telemundo.com/sites/nbcutelemundo/files/styles/social_share_1024x768_scale/public/images/promo/article/2017/07/27/george-clooney-sonriendo.jpg"),
    Actor("Angelina", "Jolie", 49, "Lara Croft: Tomb Rider",
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRtycd-TsfvoB_LvPEaJcv6TpGgqaH8wnkqntY9UP66_e1jLWlcfe13l4Rt5f9OpWA1R4RE6Xp_6hYL7sAdL66nkg"),
  ];

  int getActorListLenght() {
    return _actorList.length;
  }

  void addActor(Actor actor) {
    _actorList.add(actor);
    notifyListeners();
  }

  Actor getActorAt(int index) {
    return _actorList[index];
  }

  void removeActorAt(int index) {
    _actorList.removeAt(index);
    notifyListeners();
  }
}
