import 'dart:convert';
import './../../domain/entities/user_entity.dart';
import './../../domain/entities/portfolio_entity.dart';
import './../models/portfolio_model.dart';

class UserModel extends UserEntity {
  UserModel({
    String name,
    String email,
    String password,
    String thumbnail,
    List<PortfolioEntity> portfolio,
  }) : super(
          name: name,
          email: email,
          password: password,
          thumbnail: thumbnail,
          portfolio: portfolio,
        );

  factory UserModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    List<PortfolioModel> _portfolio = [];

    map['portfolio'].forEach((v) {
      _portfolio.add(PortfolioModel.fromMap(Map<String, dynamic>.from(v)));
    });

    return UserModel(
      name: map['name'],
      email: map['email'],
      password: map['password'],
      thumbnail: map['thumbnail'],
      portfolio: _portfolio,
    );
  }

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
