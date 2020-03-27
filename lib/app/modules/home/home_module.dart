import 'package:consuming_api/app/modules/home/home_controller.dart';
import 'package:consuming_api/app/repository/user_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:consuming_api/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        //Controller
        Bind((i) => HomeController(i.get<UserRepository>())),
        //Repository
        Bind((i) => UserRepository())
      ];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => HomePage())];

  static Inject get to => Inject<HomeModule>.of();
}
