import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/images/iron_man.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Shailendar Mahadule',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),

            SizedBox(height: 16.0),


            Text(
              ' Hey Connections !!! I am Shailendra Mahadule \n Currently Studying in Walchand college of Engineering Sangli'
                  '\nCurrently in Second Year',



              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),




            SizedBox(height: 26.0),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
                SizedBox(width: 8.0),
                Text('shailendra@gmail.com'),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8.0),
                Text('9307071723'),
              ],
            ),
            SizedBox(height: 18.0),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8.0),
                Text('Sangli, India'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
