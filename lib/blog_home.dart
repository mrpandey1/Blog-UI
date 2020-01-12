import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:ui' as ui;

import 'package:heritage_blog/blog_details_screen.dart';

class BlogHome extends StatefulWidget {
  @override
  _BlogHomeState createState() => _BlogHomeState();
}

class _BlogHomeState extends State<BlogHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Blog',
          style: TextStyle(
              color: Colors.black, letterSpacing: 2.0, fontSize: 18.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Leonardo',
                style: TextStyle(
                  fontFamily: 'Lato',
                ),
              ),
              accountEmail: Text(
                'leo@gmail.com',
                style: TextStyle(
                  fontFamily: 'Lato',
                ),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media1.popsugar-assets.com/files/thumbor/Glb-mJzXT2Dvgh-tXtA1PTPLitI/fit-in/500x500/filters:format_auto-!!-:strip_icc-!!-/2018/07/16/716/n/1922398/e372b6625b4cc3d45d6485.32517235_/i/Leonardo-DiCaprio.jpg'),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
//                image: DecorationImage(
//                  image: NetworkImage(
//                    'https://serfob.s3.amazonaws.com/media/dark-light-diamond-black-background341-ea58-4f38-872a-46973a25c8ba.png',
//                  ),
//                  fit: BoxFit.cover,
//                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(
                Icons.home,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                'Upload New Blog',
                style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.black54,
                ),
              ),
              trailing: Icon(
                Icons.file_upload,
                color: Colors.black,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Account',
                style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.black54,
                ),
              ),
              trailing: Icon(
                Icons.account_box,
                color: Colors.black,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Log out',
                style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.black54,
                ),
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 350,
                width: double.infinity,
                child: Swiper(
                  loop: false,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        // go to details screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return BlogDetailsScreen();
                            },
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              "https://images.pexels.com/photos/3353994/pexels-photo-3353994.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                              fit: BoxFit.cover,
                              width: 400,
                            ),
                          ),
                          Container(
                            constraints:
                                BoxConstraints(minWidth: 100, maxWidth: 275),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                color: Colors.white,
                                gradient: LinearGradient(
                                    begin: FractionalOffset.topCenter,
                                    end: FractionalOffset.bottomCenter,
                                    colors: [
                                      Colors.grey.withOpacity(0.0),
                                      Colors.black,
                                    ],
                                    stops: [
                                      0.0,
                                      1.0
                                    ])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Container(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Explore The Beauty Of Mumbai',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 270),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 15.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.network(
                                        'https://cdn.images.express.co.uk/img/dynamic/79/285x214/327400_1.jpg',
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 290,
                                    ),
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'Matt LeBlanc',
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, top: 5.0),
                                      child: Text(
                                        '⏱ 1 hr ago',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          color:
                                              Colors.grey[400].withOpacity(0.8),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 10,
                  viewportFraction: 0.7,
                  scale: 0.8,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      color: Colors.black,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BlogDetailsScreen();
                        },
                      ),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Container(
                          margin: EdgeInsets.all(16.0),
                          child: Container(
                            height: 70.0,
                            width: 70.0,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1576781304856-a713dc46ff5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60',
                                height: 90,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'List of World Heritage Sites in India',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(padding: const EdgeInsets.all(2.0)),
                              Text(
                                '37 World Heritage Properties in India out of which 29 are ...',
                                maxLines: 3,
                                style: new TextStyle(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
                                    fontSize: 13.0),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        margin: EdgeInsets.all(16.0),
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1576849143892-17ec3535540f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60',
                              height: 90,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'List of World Heritage Sites in India',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Padding(padding: const EdgeInsets.all(2.0)),
                            Text(
                              '37 World Heritage Properties in India out of which 29 are ...',
                              maxLines: 3,
                              style: new TextStyle(
                                  fontFamily: 'Lato',
                                  color: Colors.black,
                                  fontSize: 13.0),
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        margin: EdgeInsets.all(16.0),
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1576875666280-af04c5e21a89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60',
                              height: 90,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'List of World Heritage Sites in India',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Padding(padding: const EdgeInsets.all(2.0)),
                            Text(
                              '37 World Heritage Properties in India out of which 29 are ...',
                              maxLines: 3,
                              style: new TextStyle(
                                  fontFamily: 'Lato',
                                  color: Colors.black,
                                  fontSize: 13.0),
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//              Padding(
//                padding: const EdgeInsets.only(left: 30.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    Container(
//                      width: 100,
//                      child: ClipRRect(
//                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                        child: Image.network(
//                          'https://images.unsplash.com/photo-1576781304856-a713dc46ff5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60',
//                          height: 90,
//                          width: 80,
//                          fit: BoxFit.cover,
//                        ),
//                      ),
//                    ),
//                    SizedBox(
//                      width: 20.0,
//                    ),
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      children: <Widget>[
//                        Padding(
//                          padding: const EdgeInsets.only(bottom: 33.0),
//                          child: Container(
//                            alignment: Alignment.topLeft,
//                            child: Text(
//                              'Travel',
//                              style:
//                                  TextStyle(color: Colors.red, fontSize: 15.0),
//                            ),
//                          ),
//                        ),
//                        Container(
//                          alignment: Alignment.topLeft,
//                          child: Text(
//                            'This Is Dummy Titile',
//                            style: TextStyle(color: Colors.red, fontSize: 15.0),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ),
