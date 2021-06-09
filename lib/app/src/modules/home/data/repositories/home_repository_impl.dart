import 'package:clean_arch_tdc/app/src/core/failure.dart';
import 'package:clean_arch_tdc/app/src/modules/home/data/datasources/home_local_datasource.dart';
import 'package:clean_arch_tdc/app/src/modules/home/domain/entities/user_entity.dart';
import 'package:clean_arch_tdc/app/src/modules/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_repository_impl.g.dart';

@Injectable()
class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl({
    @required this.localDataSource,
  });

  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    return await localDataSource.getUser();
  }
}
