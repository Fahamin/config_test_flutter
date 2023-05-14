import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class M3uPage extends StatefulWidget {
  const M3uPage({Key? key}) : super(key: key);

  @override
  State<M3uPage> createState() => _M3uPageState();
}




class _M3uPageState extends State<M3uPage> {
  final dataBaseRef =  FirebaseDatabase.instance.reference().child("mm");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("M3U List"),
        centerTitle: true,
      ),
      body: FirebaseAnimatedList(
        scrollDirection: Axis.vertical,
        query: dataBaseRef,
        itemBuilder: (context, DataSnapshot spons, Animation<double> animation,
            int index) {
          return ListTile(
            onTap: () => {},
              //_createPlayList(spons.value['name'], spons.value['link']),
            leading: Icon(Icons.tv),
            title: Text(spons.value!['name']) ,
            trailing: Icon(Icons.label),
          );
        },
      ),
    );
  }
}
