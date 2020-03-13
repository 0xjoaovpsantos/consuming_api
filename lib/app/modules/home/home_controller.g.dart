// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$usersAtom = Atom(name: '_HomeBase.users');

  @override
  List<UserModel> get users {
    _$usersAtom.context.enforceReadPolicy(_$usersAtom);
    _$usersAtom.reportObserved();
    return super.users;
  }

  @override
  set users(List<UserModel> value) {
    _$usersAtom.context.conditionallyRunInAction(() {
      super.users = value;
      _$usersAtom.reportChanged();
    }, _$usersAtom, name: '${_$usersAtom.name}_set');
  }

  final _$screenLoadAtom = Atom(name: '_HomeBase.screenLoad');

  @override
  bool get screenLoad {
    _$screenLoadAtom.context.enforceReadPolicy(_$screenLoadAtom);
    _$screenLoadAtom.reportObserved();
    return super.screenLoad;
  }

  @override
  set screenLoad(bool value) {
    _$screenLoadAtom.context.conditionallyRunInAction(() {
      super.screenLoad = value;
      _$screenLoadAtom.reportChanged();
    }, _$screenLoadAtom, name: '${_$screenLoadAtom.name}_set');
  }

  final _$loadUsersListAsyncAction = AsyncAction('loadUsersList');

  @override
  Future loadUsersList() {
    return _$loadUsersListAsyncAction.run(() => super.loadUsersList());
  }

  @override
  String toString() {
    final string =
        'users: ${users.toString()},screenLoad: ${screenLoad.toString()}';
    return '{$string}';
  }
}
