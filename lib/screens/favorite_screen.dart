import 'package:flutter/material.dart';
import 'package:starbucks_coffee_flutter/data_page/page_coffee_data_screen.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //stops: [0.1, 0.4, 0.7, 0.9],
          colors: [
            Colors.green,
            Colors.green,
            Colors.green,
            Colors.grey,
            Colors.grey,
            Colors.grey,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 40.0),
        child: ListView.builder(
            //scrollDirection: Axis.horizontal,
            itemCount: PAGES.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                ),
                child: PAGES[index],
              );
            }),
      ),
    );
  }
}
