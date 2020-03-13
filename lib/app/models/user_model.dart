import 'package:consuming_api/app/models/address_model.dart';
import 'package:consuming_api/app/models/company_model.dart';

class UserModel {
  UserModel();

  String _id;
  String _name;
  String _username;
  AddressModel _address;
  String _phone;
  String _website;
  CompanyModel _company;
}
