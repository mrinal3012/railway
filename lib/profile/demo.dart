import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  var isColor=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          SizedBox(height: 80,),
          Row(children: [
            Expanded(child: Column(children: [
              TextButton(onPressed: (){
                setState(() {
                  isColor=0;
                });
              }, child: Text(
                "Book Ticket",
                style: TextStyle(
                    fontSize: 15,
                    color: isColor == 0 ? Colors.red : Colors.blueGrey,
                    fontWeight: FontWeight.w700),
              ),),

              Container(
                height: 2,
                width: double.infinity,
                color: isColor == 0 ? Colors.red : Colors.black,
              )
            ],)),

            Expanded(child: Column(children: [
              TextButton(onPressed: (){
                setState(() {
                  isColor=1;
                });
              }, child: Text(
                "Quick Boking",
                style: TextStyle(
                    fontSize: 15,
                    color: isColor == 1? Colors.red : Colors.blueGrey,
                    fontWeight: FontWeight.w700),
              ),),

              Container(
                height: 2,
                width:double.infinity,
                color: isColor == 1 ? Colors.red : Colors.black,
              )
            ],)),
            Expanded(child: Column(children: [
              TextButton(onPressed: (){
                setState(() {
                  isColor=2;
                });
              }, child: Text(
                "station Booking",
                style: TextStyle(
                    fontSize: 15,
                    color: isColor == 2 ? Colors.red : Colors.blueGrey,
                    fontWeight: FontWeight.w700),
              ),),

              Container(
                height: 2,
                width: double.infinity,
                color: isColor == 2 ? Colors.red : Colors.black,
              )
            ],)),
          ],),


        ],
      ),
    );
  }
}
