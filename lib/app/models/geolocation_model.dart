class GeolocationModel {
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
