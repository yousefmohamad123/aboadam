import 'package:flutter/cupertino.dart';
import 'package:untitled3/user/usermodal.dart';
import '../servics/serv.dart';


class Providerss extends ChangeNotifier {
  UserModel? userData;

  Future<void> fetchUsers() async {
    userData = await UserService.fetchRandomUsers();
    notifyListeners();
  }
}