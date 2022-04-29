import 'package:hive/hive.dart';
import 'package:loggy/loggy.dart';

import '../../../domain/entities/random_user.dart';
import '../../models/random_user_model.dart';
import '../../models/userdb.dart';

class UserLocalDataSourceHive {
  addUser(RandomUser user) {
    // aquí se debe llamar Hive box add mandando una entrada de UserDB
  }

  Future<List<RandomUser>> getAllUsers() async {
    // aquí se debe llamar
  }

  deleteAll() async {
    logInfo("Deleting all from database");
  }

  deleteUser(index) async {}

  updateUser(RandomUser user) async {
    logInfo("Updating entry $user");
  }
}
