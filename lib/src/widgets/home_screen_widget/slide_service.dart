import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SlideService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'DỊCH VỤ NỔI BẬT',
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 13),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Service(
                      image: "public/img/pic4.png",
                      press: () {},
                    ),
                    Service(
                      image: "public/img/pic7.jpg",
                      press: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Service extends StatelessWidget {
  final String image;
  final Function press;
  const Service({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 13),
        width: size.width * 0.8,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
