import 'package:consuming_api/app/modules/userdescription/user_description.dart';
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
  final homeController = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example - Consuming API")),
      body: Observer(builder: (context) {
        return SingleChildScrollView(
          child: homeController.screenLoad
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: homeController.users.map((value) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    UserDescriptionPage(value)));
                      },
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          margin: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Text(value.name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text("User: " + value.username),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Text("Email: " + value.email),
                              )
                            ],
                          )),
                    ),
                  );
                }).toList()),
        );
      }),
    );
  }

  Widget UserCard(BuildContext context, index) {
    return Container(
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text("teste",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Text("User: Breat"),
              Text("Email: Sincere@april.biz")
            ],
          )),
    );
  }
}
