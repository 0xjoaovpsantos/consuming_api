import 'package:consuming_api/app/models/user_model.dart';
import 'package:consuming_api/app/repository/user_repository.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final UserRepository _userRepository;

  _HomeBase(this._userRepository) {
    _userRepository.searchUsers().then((users) => listUsers = users);
  }

  @observable
  List<UserModel> listUsers;
}
