import 'package:clean_arch_tdc/app/src/core/failure.dart';
import 'package:clean_arch_tdc/app/src/core/usecase.dart';

import 'package:clean_arch_tdc/app/src/modules/home/domain/entities/user_entity.dart';
import 'package:clean_arch_tdc/app/src/modules/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'get_user_usecase.g.dart';

@Injectable()
class GetUserUseCase extends FutureUseCase<UserEntity, NoParams> {
  final HomeRepository repository;

  GetUserUseCase({@required this.repository});

  Future<Either<Failure, UserEntity>> call([NoParams noParams]) async {
    final result = await repository.getUser();

    return result;
  }
}
