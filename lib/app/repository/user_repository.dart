import 'dart:convert';

import 'package:consuming_api/app/models/user_model.dart';
import 'package:consuming_api/app/utils/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;

class UserRepository extends Disposable {
  Future<List<UserModel>> searchUsers() async {
    var data;
    http.Response response;
    var users = List<UserModel>();
    try {
      response = await http.get("https://jsonplaceholder.typicode.com/users");
      data = jsonDecode(response.body);
      for (var user in data) {
        users.add(UserModel.fromJson(user));
      }
      /*data.forEach((userJson) {
        UserModel user = UserModel(userJson);
        users.add(user);
      });*/
    } catch (ex) {}

    return users;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
