import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'controller/home_controller.dart';
import './widgets/app_bar_user/app_bar_user_info_widget.dart';
import './widgets/card_portfolio_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        child: Observer(
          builder: (context) => AppBarUserInfoWidget(
            name: controller?.userEntity?.name,
          ),
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: Observer(
        builder: (context) => SingleChildScrollView(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller?.userEntity?.portfolio?.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    EdgeInsets.only(top: 16.0, bottom: 8, left: 16, right: 16),
                child: CardPortfolioWidget(
                  title: controller?.userEntity?.portfolio[index]?.title,
                  date: controller?.userEntity?.portfolio[index]?.date,
                  description:
                      controller?.userEntity?.portfolio[index]?.description,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
