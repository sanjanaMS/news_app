import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Profile'),
      backgroundColor: Color(0xff1a322b)),
      drawer: SideDrawer(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.30,
            width: double.infinity,

            color: Colors.grey[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                    backgroundImage: AssetImage('assets/circle.png'),
                    backgroundColor: Colors.orange,
                ),
                SizedBox(height: 10,),
                Text('Dinesh yaduvanshi',
                style: TextStyle(color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 25,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)
                    ),
                    child: Text('Edit Profile',
                    style: TextStyle(
                      color: Colors.orange,
                    ),),
                  )
                )
              ],
            ),
          ),
          SizedBox(height:10,),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  details(dataoftext: 'Location',),

                  details(dataoftext: 'PinCode',),

                  details(dataoftext: 'Date of Birth',),

                  details(dataoftext: 'Gender',),
                  details(dataoftext: 'Phone no',),
                  details(dataoftext: 'Email',),




                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class details extends StatelessWidget {
  String dataoftext;

  details({this.dataoftext});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(dataoftext,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),),
    Theme(
        data:ThemeData(
          primaryColor: Colors.blueGrey,primaryColorDark: Colors.blueGrey
        ),child: Container(
        height:25,child: TextField(onChanged: null,cursorColor: Colors.blueGrey,))),
      ],
    );

  }
}
