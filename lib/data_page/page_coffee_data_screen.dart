import 'package:flutter/material.dart';

List Explore = [
  _Explore(
      "https://cdn.pixabay.com/photo/2015/07/21/18/33/street-854248_1280.jpg"),
  _Explore(
      "https://cdn.pixabay.com/photo/2017/05/26/15/27/womens-2346305_1280.jpg"),
  _Explore(
      "https://cdn.pixabay.com/photo/2017/08/06/18/36/people-2594999_1280.jpg"),
  _Explore(
      "https://cdn.pixabay.com/photo/2016/03/26/23/18/coffee-1281842_1280.jpg"),
];

List PAGES = [
  PageV(
    "CofeeShop's",
    "Coffe Misto",
    "Our dark, rich espresso balanced with steamed milk\nand a light layer of foam",
    4.99,
    "https://cdn.pixabay.com/photo/2017/06/15/09/18/hand-painting-2404579_1280.png",
  ),
  PageV(
    "CofeeShop's",
    "Coffe Misto",
    "Our dark, rich espresso balanced with steamed milk\nand a light layer of foam",
    4.99,
    "https://cdn.pixabay.com/photo/2017/06/15/09/18/hand-painting-2404579_1280.png",
  ),
  PageV(
    "CofeeShop's",
    "Coffe Misto",
    "Our dark, rich espresso balanced with steamed milk\nand a light layer of foam",
    4.99,
    "https://cdn.pixabay.com/photo/2017/06/15/09/18/hand-painting-2404579_1280.png",
  ),
];

class _Explore extends StatelessWidget {
  final String imgurl;

  _Explore(this.imgurl);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      decoration:
          BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(image: NetworkImage(imgurl),fit: BoxFit.cover)),
    );
  }
}

class PageV extends StatelessWidget {
  final String title;
  final String subtitle;
  final String subtitletwo;
  final double price;
  final String imageurl;

  PageV(this.title, this.subtitle, this.subtitletwo, this.price, this.imageurl);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: 430.0,
      width: 300.0,
      child: Stack(
        children: [
          Positioned(
            top: 90.0,
            child: Container(
              height: 250.0,
              width: 270.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xffdbb88a),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 35.0,
                    ),
                    Text(
                      title,
                      style: TextStyle( decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      subtitletwo,
                      style: TextStyle( decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$$price",
                          style: TextStyle( decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 100.0,
                        ),
                        Container(
                          height: 45.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.grey,
                            size: 35.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: -10,
              left: 80.0,
              child: Image.network(
                imageurl,
                width: 130.0,
                height: 130.0,
              )),
          Positioned(
            bottom: 10.0,
            left: 30.0,
            child: Container(
              child: Center(
                  child: Text(
                "Order Now",
                style: TextStyle( decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              )),
              height: 60.0,
              width: 200.0,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
