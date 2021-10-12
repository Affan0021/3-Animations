import 'package:flutter/material.dart';

import 'new.dart';

void main()
{
  runApp(MaterialApp(

    home: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);


  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(

           child: Stack(

             children: [

               Container(
                 margin: EdgeInsets.only(top: 400),
                 child: ElevatedButton(

                   onPressed: (){
                     // Navigator.push(
                     //   context,
                     //   MaterialPageRoute(builder: (context) => Main()),
                     // );
                     Navigator.push(
                       context,
                       PageRouteBuilder(
                       transitionDuration : Duration(seconds: 1),
                         transitionsBuilder:
                         (context , animation , animationTime , child)
                         {
                           animation = CurvedAnimation(

                             parent : animation , curve: Curves.ease);
                           return ScaleTransition(
                             alignment: Alignment.center,
                             scale : animation,
                             child : child,
                           );
                         },
                         pageBuilder : (context , animation , animationTime)
                           {
                             return New();
                           }
                       )
                     );

                   },
                   child : Text('goto page')


                 ),

               )

             ],


           ),


         ),
    );
  }
}
