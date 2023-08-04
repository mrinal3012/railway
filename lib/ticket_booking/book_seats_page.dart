import 'package:flutter/material.dart';
import 'package:railway/data/custom_widget_page.dart';
import 'package:railway/data/model_page.dart';
import 'package:railway/ticket_booking/payment_page.dart';

class BookSeatPage extends StatefulWidget {
  // const BookSeatPage({Key? key}) : super(key: key);

  List<StationModel> modelList;
  BookSeatPage({required this.modelList});

  @override
  State<BookSeatPage> createState() => _BookSeatPageState();
}

class _BookSeatPageState extends State<BookSeatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.transparent,
          height: double.infinity,
          width: double.infinity,
          child:
          Column(children: [
            Expanded(child: Container(
              height: 300,
              width: double.infinity,
              child:ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),
                            color: Colors.white, borderRadius: BorderRadius.circular(5)),
                        height: 280,
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text("Ticket Number : ${widget.modelList[index].ticket}",
                                style:mystyleroboto(18,Colors.black,FontWeight.w500)),
                            Row(children: [
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${widget.modelList[index].firstStationName} To",style:mystyleroboto(18,Colors.black,FontWeight.w500)),
                                    Text("${widget.modelList[index].secondStationName}",style:mystyleroboto(18,Colors.black,FontWeight.w500)),

                                    Row(children: [

                                      TextButton(
                                          onPressed: () {

                                            widget.modelList[index].count>0? widget.modelList[index].count--:
                                            widget.modelList[index].count==0;
                                            setState(() {});

                                          },
                                          child: Icon(
                                            Icons.remove,
                                            size: 25,
                                          )),

                                      Text("${widget.modelList[index].count}",style:mystyleroboto(18,Colors.black,FontWeight.w500)),

                                      TextButton(
                                          onPressed: () {
                                            widget.modelList[index].count++;
                                            setState(() {

                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            size: 25,
                                          )),
                                    ],),

                                    Text("Single ${widget.modelList[index].amount! * widget.modelList[index].count} .00 Rs|-",
                                        style:mystyleroboto(18,Colors.black,FontWeight.w500)
                                    )
                                  ],
                                ),
                              ),),
                              Expanded(child: Image.asset("images/qrcode.png"))
                            ],),
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xff015281)),onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentPage(),));
                            }, child: Text("Payment",style: mystyleroboto(18,Colors.black,FontWeight.w500)))
                          ],
                        ),
                      ),






                    ],
                  ),
                ),),
            )),

            Expanded(child: Container(
              height: 300,
              width: double.infinity,
              child: Image.asset("images/trainpic.png"),
            ))
          ],)


        ),
      ),
    );
  }
}
