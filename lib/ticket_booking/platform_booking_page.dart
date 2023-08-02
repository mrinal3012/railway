import 'package:flutter/material.dart';
import 'package:railway/data/model_page.dart';

class PlatformBookingPage extends StatefulWidget {
  const PlatformBookingPage({Key? key}) : super(key: key);

  @override
  State<PlatformBookingPage> createState() => _PlatformBookingPageState();
}

class _PlatformBookingPageState extends State<PlatformBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,
      width: double.infinity,
      child: GridView.builder(
        itemCount: stationList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:3,
          childAspectRatio: .7,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all(width: 4,color: Colors.teal),color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),

              child: Column(children: [
                SizedBox(height: 20,),
                Text("${stationList![index].firstStationName}"),
                Container(height: 30,width: 30,child: Image.asset("images/updown.png"),),
                Text("${stationList![index].secondStationName}"),

                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(children: [
                    Text("Tk${stationList![index].amount}"),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                        onPressed: () {

                    }, child: Text("Book"))
                  ],),
                )

              ]),
            ),
          ),


      ),
      ),
    );
  }
}
