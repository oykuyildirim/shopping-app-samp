import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuAnimasyon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuAnimasyonState();
  }
}

class _MenuAnimasyonState extends State<MenuAnimasyon> {
  double ekranGenisligi = 0;
  bool menuAcik = false;
  @override
  Widget build(BuildContext context) {
    ekranGenisligi = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            menuOlustur(context),
            dashBoardOlustur(context),
          ],
        ),
      ),
    );
  }

  Widget menuOlustur(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOtNwhpiHrQjRVzCgRTb27uCHwjEcpUM1T6g&usqp=CAU"),
              width: 150,
              height: 200,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.symmetric(horizontal: 5),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, bottom: 145),
            ),
            TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text(
                "Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 14),
              ),
            ),
            TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              label: Text(
                "Siparişlerim",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 14),
              ),
            ),
            TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              label: Text(
                "Müşteri Hizmetleri",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 14),
              ),
            ),
            TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              label: Text(
                "Ayarlar",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 14),
              ),
            ),
            TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              label: Text(
                "Çıkış",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dashBoardOlustur(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      top: 0,
      bottom: 0,
      left: menuAcik ? 0.5 * ekranGenisligi : 0,
      right: menuAcik ? -0.4 * ekranGenisligi : 0,
      child: Material(
        elevation: 0,
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        menuAcik = !menuAcik;
                      });
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.lightBlue,
                    ),
                  ),
                  Text(
                    "Online Shop",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue,
                        fontSize: 20),
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.black54,
                  ),
                ],
              ),
              Container(
                   decoration: BoxDecoration(color:Colors.cyan),
                  margin: EdgeInsets.only(top: 20),
                  height: 200,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZZBQ98yw52aBZRtqeT6VRjJVazYzlSlrp-A&usqp=CAU"),
                              width: 100,
                                margin: EdgeInsets.all(10.0),
                            ),
                            Text("Ürün 1",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.network(
                                  "https://cdn.sorsware.com/oxxo/ContentImages/Product/23y/23YOX-COLHASBAG/askili-hasir-canta-_formal-garden-yesil_1_buyuk.jpg"),
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(10.0),
                            ),
                            Text("Ürün2",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.network(
                                  "https://www.iamistanbul.com/images/blog/784080_shopping-in-kadikoy.png"),
                              width: 100,
                              height: 100,
                               margin: EdgeInsets.all(10.0),
                            ),
                            Text("Ürün3",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.network(
                                  "https://a.cdn-hotels.com/gdcs/production42/d1153/87b16cf3-80b3-45f7-9703-b3e97ad8f2d2.jpg"),
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(10.0),
                            ),
                            Text("Ürün4",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Container(

                              child: Image.network(
                                  "https://www.thesun.co.uk/wp-content/uploads/2021/12/MT-SHOPPING-OFF-PLATT.jpg?strip=all&quality=100&w=1200&h=800&crop=1"),
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(10.0),
                            ),
                            Text(
                              "Ürün5",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ]),
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(color:Colors.blueGrey),
                  margin: EdgeInsets.only(top: 20),
                  height: 200,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWtg9rQFhXKHTKW-DLl5A9Bp7v2PjIKS7xoA&usqp=CAU"),
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(10.0),
                            ),
                            Text("Ürün 1",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROBanWKSX5l4Yo3YJKft43k-iSUE_lDULK0w&usqp=CAU"),
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(10.0),
                            ),
                            Text("Ürün2",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFtg3BhSJNlf5demX3oDab9mKuYVbl27GYTA&usqp=CAU"),
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(10.0),
                            ),
                            Text("Ürün3",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKeCS-Dm24EW3ArFe6DQWQpByCXMsj8rmjUg&usqp=CAU"),
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(10.0),
                            ),
                            Text("Ürün4",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM5wVeCDjC6PO3ntb21MpCFVRFLq8jV55t3Q&usqp=CAU"),
                              width: 100,
                              height: 100,
                                margin: EdgeInsets.all(10.0),
                            ),
                            Text(
                              "Ürün5",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ]),
                    ],
                  )),
              /*SizedBox(height: 30,),
              Text("Ürün 1", style: TextStyle(fontSize: 20),),
              SizedBox(height: 15,),
              Text("Ürün 2", style: TextStyle(fontSize: 20),),
              SizedBox(height: 15,),
              Text("Ürün 3", style: TextStyle(fontSize: 20),),
              SizedBox(height: 15,),
              Text("Ürün 4", style: TextStyle(fontSize: 20),),
              SizedBox(height: 15,),
              Text("Ürün 5", style: TextStyle(fontSize: 20),),*/
            ],
          ),
        ),
      ),
    );
  }
}
