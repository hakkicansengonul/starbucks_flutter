import 'package:flutter/material.dart';
import 'package:starbucks_coffee_flutter/data_page/data_page.dart';

class MPage extends StatelessWidget {
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
            Colors.grey,
            Colors.grey,
            Colors.grey,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140.0,
            ),
            Container(
              width: double.infinity,
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2018/04/26/01/57/graphic-3351078_1280.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 500.0,
              width: double.infinity,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: DataStarbucks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      child:
                          Center(child: Text('Entry ${DataStarbucks[index]}')),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
