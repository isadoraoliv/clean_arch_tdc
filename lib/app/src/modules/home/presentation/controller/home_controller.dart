import 'package:clean_arch_tdc/app/src/core/failure.dart';
import 'package:clean_arch_tdc/app/src/modules/home/domain/entities/user_entity.dart';
import 'package:clean_arch_tdc/app/src/modules/home/domain/usecases/get_user_usecase.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase extends Disposable with Store {
  ReactionDisposer _disposer;
  final GetUserUseCase getUserUseCase;

  _HomeControllerBase(this.getUserUseCase) {
    _disposer = autorun((_) async {
      await recuperaUsuario();
    });
  }

  void dispose() {
    _disposer();
  }

  @observable
  UserEntity userEntity;

  @action
  recuperaUsuario() async {
    var result = await getUserUseCase();

    result.fold(
      (l) => Failure(message: l.toString()),
      (r) => {
        userEntity = r,
      },
    );

    return userEntity;
  }
}
