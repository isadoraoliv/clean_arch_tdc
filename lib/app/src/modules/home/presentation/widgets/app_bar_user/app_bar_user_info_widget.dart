import 'package:flutter/material.dart';

class AppBarUserInfoWidget extends StatelessWidget {
  final String thumbnail;
  final String name;

  const AppBarUserInfoWidget({
    Key key,
    @required this.name,
    this.thumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
        ),
      ),
      title: Text(name ?? ''),
      actions: [
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: null,
        ),
      ],
    );
  }
}
