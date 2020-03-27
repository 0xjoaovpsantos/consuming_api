import 'package:consuming_api/app/widgets/list_users_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Example - Consuming API")),
        body: Center(
          child: SingleChildScrollView(
            child: Observer(builder: (context) {
              if (homeController.listUsers == null) {
                return Container(
                    margin: EdgeInsets.all(10),
                    child: CircularProgressIndicator());
              } else if (homeController.listUsers.isEmpty) {
                return Text("A API não retornou dados!");
              } else {
                return ListUsersWidget(listUsers: homeController.listUsers);
              }
            }),
          ),
        ));
  }
}
