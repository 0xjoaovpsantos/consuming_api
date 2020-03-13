import 'package:consuming_api/app/models/geolocation_model.dart';

class AddressModel {
  /*AddressModel(var data) {
    this.street = data["street"];
    this.suite = data["suite"];
    this.city = data["city"];
    this.zipcode = data["zipcode"];
    this.geo = GeolocationModel(data["geo"]);
  }*/

  String street;
  String suite;
  String city;
  String zipcode;
  GeolocationModel geo;

  AddressModel({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: json['id'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: GeolocationModel.fromJson(json['geo']),
    );
  }
}
