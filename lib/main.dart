import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'ui/home.dart';

Future<List<Box>> _openBox() async {
  List<Box> boxList = [];
  var dir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(UserDBAdapter());
  var user_session = await Hive.openBox("users");
  boxList.add(user_session);
  return boxList;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _openBox();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );

  Get.put(Connectivity());
  Connectivity c = Get.find();
  Get.put(NetworkInfo(connectivity: c));
  Get.put(UserRepository());
  Get.put(Users());
  Get.put(HomeController());
  runApp(Home());
}
