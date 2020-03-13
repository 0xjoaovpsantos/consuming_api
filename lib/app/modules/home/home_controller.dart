import 'package:consuming_api/app/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final userRepository;

  @observable
  List<UserModel> users = [];

  @observable
  bool screenLoad = true;

  _HomeBase(this.userRepository) {
    loadUsersList();
  }

  @action
  loadUsersList() async {
    users = await userRepository.searchUsers();
    screenLoad = false;
    print(users.toString());
  }
}
