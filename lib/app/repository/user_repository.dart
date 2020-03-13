import 'package:consuming_api/app/utils/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class UserRepository extends Disposable {
  Future fetchPost(Dio client) async {
    final response = await client.get(URL_API);
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
