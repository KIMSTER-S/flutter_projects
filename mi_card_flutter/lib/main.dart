import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              //backgroundColor: Colors.red,
              //backgroundImage: AssetImage('images/images.jpg'),
              foregroundImage: AssetImage('images/f1.jpg'),
            ),
            Text(
              'Islam Shaarawy',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 160.0,
              child: Divider(
                //height: 20,
                thickness: 5,
                //indent: 0,
                //endIndent: 0,
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                //padding: EdgeInsets.all(10.0),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 14.0),
                  leading: Icon(
                    Icons.phone,
                    size: 35,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+20 109 263 4041',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 14.0),
                leading: Icon(
                  Icons.email,
                  size: 35,
                  color: Colors.teal,
                ),
                title: Text(
                  'kareemelbhnasawy@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            )
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}



//Email Row Card

// Row(
//                 children: [
//                   Icon(
//                     Icons.email,
//                     size: 40,
//                     color: Colors.teal,
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Text(
//                     'kareemelbhnasawy@gmail.com',
//                     style: TextStyle(
//                       color: Colors.teal.shade900,
//                       fontFamily: 'Source Sans Pro',
//                       fontSize: 20.0,
//                     ),
//                   )
//                 ],
//               ),

//Phone Row Card
// Row(
//                 children: [
//                   Icon(
//                     Icons.phone,
//                     size: 40,
//                     color: Colors.teal,
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Text(
//                     '+20 109 263 4041',
//                     style: TextStyle(
//                       color: Colors.teal.shade900,
//                       fontFamily: 'Source Sans Pro',
//                       fontSize: 20.0,
//                     ),
//                   )
//                 ],
//               ),





//Angela's Row and Column Challenge

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//             child: Row(
//           //mainAxisSize: MainAxisSize.min,
//           //verticalDirection: VerticalDirection.up,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               height: 100.0,
//               width: 100.0,
//               //#margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
//               //margin: EdgeInsets.fromLTRB(20.0, 50.0, 30, 40),
//               //margin: EdgeInsets.only(left: 30.0),
//               //padding: EdgeInsets.all(20.0),
//               color: Colors.white,
//               child: Text('Container 1'),
//             ),
//             //SizedBox(
//             //height: 20.0,
//             //width: 30.0,
//             //),
//             Container(
//               // width: 100.0,
//               // height: 100.0,
//               // color: Colors.blue,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 100.0,
//                     height: 100.0,
//                     color: Colors.blue,
//                   ),
//                   Container(
//                     width: 100.0,
//                     height: 100.0,
//                     color: Colors.red,
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               width: 100.0,
//               height: 100.0,
//               color: Colors.red,
//               child: Text('Container 3'),
//             ),
//           ],
//         )),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }


//Using Rows and Columns Angela

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//             child: Row(
//           //mainAxisSize: MainAxisSize.min,
//           //verticalDirection: VerticalDirection.up,
//           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               height: 100.0,
//               width: 100.0,
//               //#margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
//               //margin: EdgeInsets.fromLTRB(20.0, 50.0, 30, 40),
//               //margin: EdgeInsets.only(left: 30.0),
//               //padding: EdgeInsets.all(20.0),
//               color: Colors.white,
//               child: Text('Container 1'),
//             ),
//             SizedBox(
//               //height: 20.0,
//               width: 30.0,
//             ),
//             Container(
//               width: 100.0,
//               height: 100.0,
//               color: Colors.blue,
//               child: Text('Container 2'),
//             ),
//             Container(
//               width: 100.0,
//               height: 100.0,
//               color: Colors.red,
//               child: Text('Container 3'),
//             ),
//             Container(
//                 //width: double.infinity,
//                 )
//           ],
//         )),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
