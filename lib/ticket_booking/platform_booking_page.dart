import 'package:flutter/material.dart';
import 'package:railway/data/custom_widget_page.dart';
import 'package:railway/data/model_page.dart';
import 'package:railway/ticket_booking/book_seats_page.dart';

class PlatformBookingPage extends StatefulWidget {
  const PlatformBookingPage({Key? key}) : super(key: key);

  @override
  State<PlatformBookingPage> createState() => _PlatformBookingPageState();
}

class _PlatformBookingPageState extends State<PlatformBookingPage> {


  List<StationModel> addTicketList=[];
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
              decoration: BoxDecoration(border: Border.all(width: 4,color: Colors.teal.withOpacity(.2)),
                  color: Colors.blueGrey.withOpacity(.2), borderRadius: BorderRadius.circular(10)),

              child: Column(children: [
                SizedBox(height: 20,),
                Text("${stationList![index].firstStationName}",style:mystyleroboto(15,Colors.black,FontWeight.w500)),
                Container(height: 30,width: 30,child: Image.asset("images/updown.png"),),
                Text("${stationList![index].secondStationName}",style:mystyleroboto(15,Colors.black,FontWeight.w500)),

                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(children: [
                    Text("Rs ${stationList![index].amount}",style:mystyleroboto(12,textClrteal,FontWeight.w800)),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: textClrteal),
                        onPressed: () {
                          // addPerfume.add(perfumeValue[index]);
                          addTicketList.add(stationList[index]);
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookSeatPage(modelList: addTicketList)));
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
