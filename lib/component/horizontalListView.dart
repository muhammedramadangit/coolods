import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imageLocation: 'assets/tshirt.png',
            imageCaption: 'Shirt',
          ),
          Category(
            imageLocation: 'assets/dress.png',
            imageCaption: 'Dresses',
          ),
          Category(
            imageLocation: 'assets/jeans.png',
            imageCaption: 'Jeans',
          ),
          Category(
            imageLocation: 'assets/formal.png',
            imageCaption: 'Formal',
          ),
          Category(
            imageLocation: 'assets/informal.png',
            imageCaption: 'Informal',
          ),
          Category(
            imageLocation: 'assets/accessories.png',
            imageCaption: 'Accessories',
          ),
          Category(
            imageLocation: 'assets/shoe.png',
            imageCaption: 'Shoses',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 70.0,
            child: ListTile(
              title: Image.asset(
                imageLocation,
                width: 70.0,
                height: 50.0,
                color: Colors.black,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  imageCaption,
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
          )),
    );
  }
}
