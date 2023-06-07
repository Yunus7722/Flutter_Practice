import 'package:firstflutter/model/user_name.dart';
import 'package:firstflutter/model/user_pic.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserPic pictures;

  

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.pictures,
  });

}

