import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserDescriptionPage extends StatelessWidget {
  var data;

  UserDescriptionPage(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User Description"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(data.name.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                information("Id", data.id.toString()),
                information("Username", data.username.toString()),
                information("Email", data.email.toString()),
                information("Street", data.address.street.toString()),
                information("Suite", data.address.suite.toString()),
                information("City", data.address.city.toString()),
                information("ZipCode", data.address.zipcode.toString()),
                information("Latitude", data.address.geo.lat.toString()),
                information("Longitude", data.address.geo.lng.toString()),
              ],
            ),
          ),
        ));
  }

  Widget information(String title, String content) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(title + ": ", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(content)
          ]),
    );
  }
}
