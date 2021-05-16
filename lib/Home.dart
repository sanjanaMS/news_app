import 'package:flutter/material.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xff1a322b),
      ),
      drawer: SideDrawer(),
      body: Container(
        padding: EdgeInsets.only(top:10,bottom: 15),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Imageinfo(imgurl: 'assets/modiji1.jpeg',),

              Imageinfo(imgurl: 'assets/mo2.jpeg',),

              Imageinfo(imgurl: 'assets/ak.jpeg',),

              Imageinfo(imgurl: 'assets/news.jpg',),

              Imageinfo(imgurl: 'assets/got.jpeg',)
            ],
          ),
        ),
      ),
    );
  }
}

class Imageinfo extends StatelessWidget {
  String imgurl;
  Imageinfo({this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // width: MediaQuery.of(context).size.width*.20,
          height: MediaQuery.of(context).size.height*.15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              height: 100,
              image: AssetImage(imgurl),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            child: Column(
              children: [
                Text(
                  'This is Heading of the realte new ws this is and go on',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'This is Heading of the related new ws this is another headig of the',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text('03-03-2021'),
                    SizedBox(
                      height: 20,
                      child: ElevatedButton(
                        onPressed: null,
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(
                                  Colors.orange),
                        ),
                        child: Text(
                          'Sports',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.bookmark_border_outlined,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
