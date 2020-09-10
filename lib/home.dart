import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavigationSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0XFF29D091),
        type: BottomNavigationBarType.fixed,
        currentIndex: _bottomNavigationSelected,
        onTap: (int index) {
          setState(() {
            _bottomNavigationSelected = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text(''),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.local_offer),
            title: new Text(''),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.message),
            title: new Text(''),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.notifications),
            title: new Text(''),
          )
        ],
      ),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: new Container(
            child: new Column(
              children: [
                Row(
                  children: [
                    new Text(
                      "Explore",
                      style: new TextStyle(fontSize: 30.0),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    new Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: new Container(
                        height: 100.0,
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(5.0),
                          color: Color(0xFFFD7384),
                        ),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Icon(
                              Icons.drive_eta,
                              color: Colors.white,
                            ),
                            new Text(
                              "Motor",
                              style: new TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 2.5),
                        child: new Container(
                          height: 100.0,
                          child: Column(
                            children: [
                              Expanded(
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                      color: Color(0XFF2BD093)),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: new Icon(
                                          Icons.local_offer,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text(
                                        "Classified",
                                        style:
                                            new TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 2.5),
                                child: new Container(
                                  height: 100.0,
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            new BorderRadius.circular(5.0),
                                        color: Color(0XFFFC7B4D)),
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: new Icon(
                                            Icons.beenhere,
                                            color: Colors.white,
                                          ),
                                        ),
                                        new Text(
                                          "Service",
                                          style: new TextStyle(
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 2.5),
                      child: new Container(
                        height: 100.0,
                        child: Column(
                          children: [
                            Expanded(
                              child: new Container(
                                height: 100.0,
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  color: Color(0XFF53CEDB),
                                ),
                                child: new Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5.0, left: 5.0),
                                      child: new Icon(
                                        Icons.account_balance,
                                        color: Colors.white,
                                      ),
                                    ),
                                    new Text(
                                      "Properties",
                                      style: new TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 2.5),
                              child: new Container(
                                height: 100.0,
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  color: Color(0XFFF1B069),
                                ),
                                child: new Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8.0, left: 5.0),
                                      child: new Icon(
                                        Icons.art_track,
                                        color: Colors.white,
                                      ),
                                    ),
                                    new Text(
                                      "Jobs",
                                      style: new TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    new Expanded(
                        child: new Text(
                      "Popular Trending",
                      style: new TextStyle(fontSize: 20),
                    )),
                    new Expanded(
                        child: new Text(
                      "View All",
                      style: new TextStyle(color: Color(0XFF2BD093)),
                      textAlign: TextAlign.end,
                    ))
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    new Expanded(
                        child: Container(
                      height: 140.0,
                      child: new Column(
                        children: [
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          new Text(
                            'Play Station',
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                      height: 140.0,
                      child: new Column(
                        children: [
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      'https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          new Text(
                            "Jewellery and Watches ",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                      height: 140.0,
                      child: new Column(
                        children: [
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      'http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          new Text(
                            "Electronics ",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    new Expanded(
                        child: new Text(
                      "Popular Trending",
                      style: new TextStyle(fontSize: 20),
                    )),
                    new Expanded(
                        child: new Text(
                      "View All",
                      style: new TextStyle(color: Color(0XFF2BD093)),
                      textAlign: TextAlign.end,
                    ))
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    new Expanded(
                        child: Container(
                      height: 140.0,
                      child: new Column(
                        children: [
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          new Text(
                            'Play Station',
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                      height: 140.0,
                      child: new Column(
                        children: [
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      'https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          new Text(
                            "Jewellery and Watches ",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                      height: 140.0,
                      child: new Column(
                        children: [
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      'http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          new Text(
                            "Electronics ",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    new Expanded(
                        child: new Text(
                      "Popular Trending",
                      style: new TextStyle(fontSize: 20),
                    )),
                    new Expanded(
                        child: new Text(
                      "View All",
                      style: new TextStyle(color: Color(0XFF2BD093)),
                      textAlign: TextAlign.end,
                    ))
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    new Expanded(
                        child: Container(
                      height: 140.0,
                      child: new Column(
                        children: [
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          new Text(
                            'Play Station',
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                      height: 140.0,
                      child: new Column(
                        children: [
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      'https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          new Text(
                            "Jewellery and Watches ",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                      height: 140.0,
                      child: new Column(
                        children: [
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      'http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          new Text(
                            "Electronics ",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
