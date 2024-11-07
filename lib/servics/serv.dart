

import 'package:dio/dio.dart';

import '../user/usermodal.dart';

class UserService {
  static final Dio dio = Dio();

  static Future<UserModel> fetchRandomUsers() async {
    try {
      Response response = await dio.get('https://randomuser.me/api/?results=5');
      return UserModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Error fetching users: $e');
    }
  }
}

