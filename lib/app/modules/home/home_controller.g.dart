// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$listUsersAtom = Atom(name: '_HomeBase.listUsers');

  @override
  List<UserModel> get listUsers {
    _$listUsersAtom.context.enforceReadPolicy(_$listUsersAtom);
    _$listUsersAtom.reportObserved();
    return super.listUsers;
  }

  @override
  set listUsers(List<UserModel> value) {
    _$listUsersAtom.context.conditionallyRunInAction(() {
      super.listUsers = value;
      _$listUsersAtom.reportChanged();
    }, _$listUsersAtom, name: '${_$listUsersAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'listUsers: ${listUsers.toString()}';
    return '{$string}';
  }
}
