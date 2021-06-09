import 'package:clean_arch_tdc/app/src/core/failure.dart';
import 'package:clean_arch_tdc/app/src/modules/home/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, UserEntity>> getUser();
}
