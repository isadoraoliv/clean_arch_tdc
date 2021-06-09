import 'dart:convert';
import './../../domain/entities/portfolio_entity.dart';

class PortfolioModel extends PortfolioEntity {
  PortfolioModel({
    String title,
    String description,
    String date,
  }) : super(
          title: title,
          description: description,
          date: date,
        );

  factory PortfolioModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PortfolioModel(
      title: map['title'],
      description: map['description'],
      date: map['date'],
    );
  }

  factory PortfolioModel.fromJson(String source) =>
      PortfolioModel.fromMap(json.decode(source));
}
