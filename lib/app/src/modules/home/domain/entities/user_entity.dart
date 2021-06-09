import './portfolio_entity.dart';

class UserEntity {
  final String name;
  final String email;
  final String password;
  final String thumbnail;
  final List<PortfolioEntity> portfolio;

  UserEntity({
    this.name,
    this.email,
    this.password,
    this.thumbnail,
    this.portfolio,
  });
}
