import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final dir;

  FirstScreen(this.dir);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return GridView.count(
        crossAxisCount: 2,
        scrollDirection: dir,
        childAspectRatio: itemWidth/itemHeight,
        children: <Widget>[
          CardView(
              img:
                  'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              name: 'Dog'),
          CardView(
              img:
                  'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              name: 'Dog'),
          CardView(
              img:
                  'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              name: 'Dog'),
          CardView(
              img:
                  'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              name: 'Dog'),
        ]);
  }
}

class CardView extends StatelessWidget {
  final img, name;
  CardView({this.img, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              height: 150,
              fit: BoxFit.cover,
              image: NetworkImage(img),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(name,style: TextStyle(color: Colors.black,fontSize: 16),),
            ),
            Row(
              children: <Widget>[
                Icon(Icons.location_on,color: Colors.black,),
                Text('Hyderabad, Telangana',style: TextStyle(color: Colors.black,fontSize: 16),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                'Lost',
                style: TextStyle(
                    backgroundColor: Colors.greenAccent, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text('1 day Ago',style: TextStyle(color: Colors.black,fontSize: 16),),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(100),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.share,color: Colors.black,),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text('Share', style: TextStyle(color: Colors.black,fontSize: 16),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
