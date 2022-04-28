import 'package:hive/hive.dart';
import 'package:loggy/loggy.dart';

import '../../../domain/entities/random_user.dart';
import '../../models/random_user_model.dart';
import '../../models/userdb.dart';

class UserLocalDataSourceHive {
  addUser(RandomUser user) {}

  Future<List<RandomUser>> getAllUsers() async {}

  deleteAll() async {
    logInfo("Deleting all from database");
  }

  deleteUser(index) async {}

  updateUser(RandomUser user) async {
    logInfo("Updating entry $user");
  }
}
