import 'package:hive/hive.dart';

part 'userdb.g.dart';

@HiveType(typeId: 0)
class UserDB extends HiveObject {
  UserDB({
    required this.gender,
    required this.name,
    required this.country,
    required this.email,
    required this.picture,
  });

  @HiveField(0)
  String gender;
  @HiveField(1)
  String name;
  @HiveField(2)
  String country;
  @HiveField(3)
  String email;
  @HiveField(4)
  String picture;
}
