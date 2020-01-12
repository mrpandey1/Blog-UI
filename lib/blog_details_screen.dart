import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BlogDetailsScreen extends StatefulWidget {
  @override
  _BlogDetailsScreenState createState() => _BlogDetailsScreenState();
}

class _BlogDetailsScreenState extends State<BlogDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 500,
              width: double.infinity,
              child: Image.network(
                'https://images.pexels.com/photos/3429761/pexels-photo-3429761.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 380.0),
              child: Container(
                width: double.infinity,
                child: Material(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 35, left: 35.0),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.blue,
                              size: 17.0,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 35, left: 5.0),
                            child: Text(
                              'DEHLI',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding:
                            EdgeInsets.only(top: 10, left: 35.0, right: 35.0),
                        child: Text(
                          'A Journey To Taj Mahal And Jaipur',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 35.0, top: 10),
                            alignment: Alignment.topLeft,
                            child: Text(
                              '⏱ 1d ago',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15.0, top: 10),
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.whatshot,
                              size: 18.0,
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 3.0, top: 10),
                            alignment: Alignment.topLeft,
                            child: Text(
                              '69',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20.0, left: 35.0),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.network(
                                'https://cdn.images.express.co.uk/img/dynamic/79/285x214/327400_1.jpg',
                                height: 50,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Matt LeBlanc',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 25.0, left: 35.0, right: 35.0, bottom: 25.0),
                        child: Text(
                          "I woke up at 3:30 AM to prepare myself for the once in a lifetime trip, to see the sunrise at the Taj Mahal. My driver was right on time by 5:00 am and we drove for 15 minutes to the ticket booth to buy the entry ticket. Taj Mahal has the most expensive ticket of all the monuments in India. For foreigners, it will cost you around 750 rupees. If you are a citizen of SAARC and BIMSTEC countries, your ticket will be cheaper. Since I'm from Thailand which is part of the BIMSTEC countries, I was able to get the ticket for only 510 rupees. You will be distributed with a plastic bag which you will need to cover your shoes as you walk up to the Taj Mahal.",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                            height: 1.6,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
