import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
 class Video extends StatefulWidget {
   @override
   _VideoState createState() => _VideoState();
 }

 class _VideoState extends State<Video> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Video'),
         backgroundColor: Color(0xff1a322b)),
       drawer: SideDrawer(),
       body: Container(
         padding: EdgeInsets.symmetric(vertical: 5),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           // crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Text('Videos',
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 20,
             ),),
             Divider(
               height: 5,
               thickness: 5,
               color: Colors.grey,
             ),
             Container(
               width: double.infinity,
                 height:MediaQuery.of(context).size.height*.22,
                 child: Image(image: AssetImage('assets/video.jpeg'),
                 fit: BoxFit.fill,)),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   Text('This is Heading of the realted new ws this is another',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 17,
                     ),),
                   SizedBox(height: 5,),
                   Text('Date & Time here',
                   style: TextStyle(
                     color: Colors.grey,
                     fontSize: 18,
                   ),),
                   SizedBox(height: 5,),
                   Text('This is Heading of the realted new ws this is another Heading of the',
                   style: TextStyle(
                     fontSize: 20,
                     color: Colors.grey
                   ),),
                   ElevatedButton(
                       style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(Color(0xfff2f2f2)),
                         elevation: MaterialStateProperty.all(5),
                       ),

                       child: Text('Information',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.black
                   ),))
                 ],
               ),
             ),
             Expanded(
               child: Container(
                 padding: EdgeInsets.symmetric(vertical: 3),
                 child: Column(
                   children: [
                     Imageinfo(imgurl: 'assets/farmer.jpg',),
                     SizedBox(height: 8,),
                     Imageinfo(imgurl: 'assets/farm.jpg',),
                     SizedBox(height: 8,),
                     Imageinfo(imgurl: 'assets/earth.png',)

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

class Imageinfo extends StatelessWidget {
  String imgurl;
  Imageinfo({this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width*.35,
          height: MediaQuery.of(context).size.height*.10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              fit: BoxFit.fill,
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
padding: EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'This is Heading of the realte new ws this is and go on',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
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
                          'info',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
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
