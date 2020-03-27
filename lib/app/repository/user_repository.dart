import 'dart:convert';

import 'package:consuming_api/app/models/user_model.dart';
import 'package:consuming_api/app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserRepository extends Disposable {
  final Dio _client;

  UserRepository(this._client);

  Future<List<UserModel>> searchUsers() async {
    try {
      final response =
          await _client.get("https://jsonplaceholder.typicode.com/users");
      return (response.data as List)
          .map((item) => UserModel.fromJson(item))
          .toList();
    } catch (ex) {}
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
