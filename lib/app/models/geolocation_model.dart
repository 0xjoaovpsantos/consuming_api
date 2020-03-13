class GeolocationModel {
  /*GeolocationModel(var data) {
    this.lat = data["lat"];
    this.lng = data["lng"];
  }*/

  String lat;
  String lng;

  GeolocationModel({this.lat, this.lng});

  factory GeolocationModel.fromJson(Map<String, dynamic> json) {
    return GeolocationModel(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );
  }
}
