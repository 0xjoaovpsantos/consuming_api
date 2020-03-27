import 'package:consuming_api/app/models/user_model.dart';
import 'package:consuming_api/app/modules/userdescription/user_description.dart';
import "package:flutter/material.dart";

class ListUsersWidget extends StatelessWidget {
  final List<UserModel> listUsers;

  const ListUsersWidget({Key key, @required this.listUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: listUsers.map((value) {
      return Container(
        width: MediaQuery.of(context).size.width,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UserDescriptionPage(value)));
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
                            fontSize: 20, fontWeight: FontWeight.bold)),
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
    }).toList());
  }
}
