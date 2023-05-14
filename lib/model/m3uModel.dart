import 'package:firebase_database/firebase_database.dart';

class User{

  var name;
  var link;

  User({
    this.name,
    this.link,
  });

  User.fromSnapshot(DataSnapshot snapshot){
    link = snapshot.value??['link'] ?? 'link';
    name = snapshot.value??['name'] ?? 'name';

  }
}