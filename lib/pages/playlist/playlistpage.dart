import 'package:config_test_flutter/pages/playlist/playlistprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../sqlhelpterdb.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*  return Scaffold(
      body: Center(
        child: Expanded(
          child: _list.isNotEmpty
              ? ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey[400],
                  elevation: 4,
                  child: ListTile(
                     // onTap: () =>
                     // {controler.getSigleList(_list[index]['title'])},
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(
                                    width: 1.0, color: Colors.grey))),
                        child: Icon(Icons.autorenew, color: Colors.grey),
                      ),
                      title: Text(
                        _list[index]['title'],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                      subtitle: Row(
                        children:[
                          Icon(Icons.linear_scale,
                              color: Colors.yellowAccent),
                          Text("ddd", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey, size: 30.0)),
                );
              })
              : const Text(
            'No PlayList found \n Add Playlist First',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );*/
    /*return Consumer(builder: (context, ref, child) {
      final cartprovider = ref.watch(playListProvidr);
      return cartprovider.when(
          error: (error, str) => Text("helo"),
          loading: () => Center(child: CircularProgressIndicator()),
          data: (list) {
            return ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext con, int index) {
                  return ListTile(title: list[index]['title']);
                });
          });
    });*/
  }
}
