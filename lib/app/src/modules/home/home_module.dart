import 'package:clean_arch_tdc/app/src/modules/home/data/datasources/home_local_datasource.dart';
import 'package:clean_arch_tdc/app/src/modules/home/data/repositories/home_repository_impl.dart';
import 'package:clean_arch_tdc/app/src/modules/home/domain/usecases/get_user_usecase.dart';

import 'presentation/controller/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        //DataSources
        $HomeLocalDataSourceImpl,

        //Repositories
        $HomeRepositoryImpl,

        //Usecases
        $GetUserUseCase,

        //Controller
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => HomePage(),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
