class CompanyModel {
  /*CompanyModel(var data) {
    this._name = data["name"];
    this._catchPhrase = data["catchPhrase"];
    this._bs = data["bs"];
  }*/

  String name;
  String catchPhrase;
  String bs;

  CompanyModel({this.name, this.catchPhrase, this.bs});

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );
  }
}
