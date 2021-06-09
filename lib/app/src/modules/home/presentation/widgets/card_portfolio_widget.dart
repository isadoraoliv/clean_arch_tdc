import 'package:flutter/material.dart';

class CardPortfolioWidget extends StatelessWidget {
  final String title;
  final String description;
  final String date;

  const CardPortfolioWidget({Key key, this.title, this.description, this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(date),
            ],
          ),
          SizedBox(height: 16),
          Text(
            description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
