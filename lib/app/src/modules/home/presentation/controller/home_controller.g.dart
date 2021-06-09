// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<GetUserUseCase>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$userEntityAtom = Atom(name: '_HomeControllerBase.userEntity');

  @override
  UserEntity get userEntity {
    _$userEntityAtom.reportRead();
    return super.userEntity;
  }

  @override
  set userEntity(UserEntity value) {
    _$userEntityAtom.reportWrite(value, super.userEntity, () {
      super.userEntity = value;
    });
  }

  final _$recuperaUsuarioAsyncAction =
      AsyncAction('_HomeControllerBase.recuperaUsuario');

  @override
  Future recuperaUsuario() {
    return _$recuperaUsuarioAsyncAction.run(() => super.recuperaUsuario());
  }

  @override
  String toString() {
    return '''
userEntity: ${userEntity}
    ''';
  }
}
