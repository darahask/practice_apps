import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class EcommerceOnePage extends StatelessWidget {
  final List<String> categories = ['Courses', 'Flash Sales', 'Collection', 'Vouchers', 'Categories'];
  final String sliderImage = 'assets/images/img_';
  final String sliderImage2 = 'assets/images_2/img_';
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Text('Cogent Web Services'),
          elevation: 0,
        ),
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: _buildListView,
            itemCount: 10,
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('Messages')),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('Cart')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Account')),
          ],
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
        ),
      );
    }

  Widget _buildListView(_,index) {
    if(index==0) return _buildSlider();
    if(index==1) return _buildCategoriesGrid();
    if(index==2) return _buildFlashSales();
    if(index==3) return _buildPopular();
    if(index==4) return Center(child: Text('Just for You', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),));
    int count= index-5;
    int b=4-count;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Image(image: AssetImage('$sliderImage2$count.jpg'),),
                SizedBox(height: 10.0,),
                Text('Online Crash Course', softWrap: true,),
                SizedBox(height: 10.0,),
                Text('Rs.1,254', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red),)
              ],
            ),
          ),
          SizedBox(width: 10.0,),
          Expanded(
            child: Column(
              children: <Widget>[
                Image(image: AssetImage('$sliderImage2$b.jpg'),),
                SizedBox(height: 10.0,),
                Text('Online Crash Course', softWrap: true,),
                SizedBox(height: 10.0,),
                Text('Rs.1,254', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red),)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopular() {
    return Container(
      height: 250,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                _buildPopularItem(),
                SizedBox(width: 10.0,),
                _buildPopularItem(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                _buildPopularItem(),
                SizedBox(width: 10.0,),
                _buildPopularItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildPopularItem() {
    return Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image:  AssetImage('assets/images_2/exploreML.png'),
                    fit: BoxFit.contain),
                    color: Colors.white,
                    border: Border(left: BorderSide(
                      color: Colors.red.shade200,
                      style: BorderStyle.solid,
                      width: 5
                    ))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Explore ML'),
                      ),
                      Text('Rs.1999/-', style: TextStyle(fontSize: 08.0),)
                    ],)
                  ),
    ));
  }

  Widget _buildFlashSales() {
    return Container(
      height: 200,
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Flash Sales', style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 10.0,),
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                    child: Text('02', style: TextStyle(color: Colors.white), )
                  ),
                  SizedBox(width: 5.0,),
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                    child: Text('20', style: TextStyle(color: Colors.white), )
                  ),
                  SizedBox(width: 5.0,),
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                    child: Text('30', style: TextStyle(color: Colors.white), )
                  ),
                ],
              ),
              Text('SHOP MORE >>', style: TextStyle(color: Colors.red[600]),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              _buildFlashSaleItem(0),
              _buildFlashSaleItem(1),
              _buildFlashSaleItem(2),
            ],
          )
        ],
      ),
    );
  }

  Expanded _buildFlashSaleItem(int index) {
    return Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('$sliderImage2$index.jpg'),fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Stack(
                      children: <Widget>[
                        ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: StadiumBorder(side: BorderSide(width: 1, style: BorderStyle.solid,color: Colors.red))
                          ),
                          child: Container(
                            height: 20,
                            color: Colors.red.shade200,
                          ),
                        ),
                        ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: StadiumBorder(side: BorderSide(width: 1, style: BorderStyle.solid,color: Colors.red))
                          ),
                          child: Container(
                            padding: EdgeInsets.only(left: 10.0),
                            height: 20,
                            width: 70,
                            color: Colors.red,
                            child: Text('12 Sold', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Text('Rs.275')
                  ],
                ),
              ),
            );
  }

  Widget _buildSlider() {
    return Container(
      height: 120.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Container(
              height: 110,
              color: Colors.red[700],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Swiper(
              autoplay: true,
              itemBuilder: (BuildContext context,int index){
                return Image(
                  image: AssetImage('$sliderImage$index.jpg'),
                  fit: BoxFit.cover,
                );
              },
              itemCount: 4,
              pagination: new SwiperPagination(),
              
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesGrid() {
    return Container(
      height: 110.0,
      child: GridView.builder(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10.0,

        ),
        itemBuilder: (_, int index){
          return GestureDetector(
            onTap: ()=>print(categories[index]),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red[600],
                  maxRadius: 30.0,
                  child: Icon(Icons.home,color: Colors.white,),
                ),
                SizedBox(height: 8.0,),
                Text(categories[index%categories.length])
              ],
            ),
          );
        },
        itemCount: categories.length,

      ),
    );
  }

}