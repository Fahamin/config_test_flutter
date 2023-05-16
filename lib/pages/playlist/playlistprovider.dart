import 'package:config_test_flutter/sqlhelpterdb.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final playListProvidr = FutureProvider.autoDispose((ref) async {
  return await SQLHelper.getAllPlayList();
});
