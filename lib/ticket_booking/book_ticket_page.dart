import 'package:flutter/material.dart';
import 'package:railway/data/custom_widget_page.dart';
import 'package:railway/data/model_page.dart';
import 'package:railway/ticket_booking/payment_page.dart';

class BookTicket_Page extends StatefulWidget {
  const BookTicket_Page({Key? key}) : super(key: key);

  @override
  State<BookTicket_Page> createState() => _BookTicket_PageState();
}

class _BookTicket_PageState extends State<BookTicket_Page> {

  var a;
  var b;
  var value;
  var count=1;
  var totalValue;

  getdata(){

    setState(() {
      a==0 && b==0?value=0:

      a==1 && b==1?value=0:a==1 && b==2?value=20:a==1 && b==3?value=20:a==1 && b==4?value=30:
      a==1 && b==5?value=30:a==1 && b==6?value=40:a==1 && b==7?value=40:a==1 && b==8?value=50:a==1 && b==9?value=60:

      a==2 && b==1?value=20:a==2 && b==2?value=0:a==2 && b==3?value=20:a==2 && b==4?value=20:
      a==2 && b==5?value=30:a==2 && b==6?value=30:a==2 && b==7?value=40:a==2 && b==8?value=40:a==2 && b==9?value=50:

      a==3 && b==1?value=20:a==3 && b==2?value=20:a==3 && b==3?value=0:a==3 && b==4?value=20:
      a==3 && b==5?value=20:a==3 && b==6?value=30:a==3 && b==7?value=30:a==3 && b==8?value=40:a==3 && b==9?value=40:

      a==4 && b==1?value=30:a==4 && b==2?value=20:a==4 && b==3?value=20:a==4 && b==4?value=0:
      a==4 && b==5?value=20:a==4 && b==6?value=20:a==4 && b==7?value=20:a==4 && b==8?value=30:a==4 && b==9?value=30:

      a==5 && b==1?value=30:a==5 && b==2?value=30:a==5 && b==3?value=20:a==5 && b==4?value=20:
      a==5 && b==5?value=0:a==5 && b==6?value=20:a==5 && b==7?value=20:a==5 && b==8?value=20:a==5 && b==9?value=30:

      a==6 && b==1?value=40:a==6 && b==2?value=30:a==6 && b==3?value=30:a==6 && b==4?value=20:
      a==6 && b==5?value=20:a==6 && b==6?value=0:a==6 && b==7?value=20:a==6 && b==8?value=20:a==6 && b==9?value=20:

      a==7 && b==1?value=40:a==7 && b==2?value=40:a==7 && b==3?value=30:a==7 && b==4?value=20:
      a==7 && b==5?value=20:a==7 && b==6?value=20:a==7 && b==7?value=0:a==7 && b==8?value=20:a==7 && b==9?value=20:

      a==8 && b==1?value=50:a==8 && b==2?value=40:a==8 && b==3?value=40:a==8 && b==4?value=30:
      a==8 && b==5?value=20:a==8 && b==6?value=20:a==8 && b==7?value=20:a==8 && b==8?value=0:a==8 && b==9?value=20:

      a==9 && b==1?value=60:a==9 && b==2?value=50:a==9 && b==3?value=40:a==9 && b==4?value=30:
      a==9 && b==5?value=20:a==9 && b==6?value=20:a==9 && b==7?value=20:a==9 && b==8?value=20:a==9 && b==9?value=0:
      value=0;
      totalValue=value*count;

    });
    print("bbbbbbbbbbbbbbbb...................................................$b");
    print("aaaaaaaaaaaaaaaaaaaaaa...............................................$a");
    print("valuevaluevaluevalue,...................................................$value");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: double.infinity,
          child: Column(children: [
            Expanded(flex: 3,child:Container(
              decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              height: double.infinity,

              child: Column(
                children: [

                  SizedBox(height: 10,),

                  Expanded(flex: 8,child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(child: Row(children: [
                      Expanded(child:
                      Container(
                        decoration: BoxDecoration(color: Color(0xff015281),borderRadius: BorderRadius.circular(8)),
                         child: ListView.builder(itemCount:stationNameList.length , itemBuilder: (context, index) =>
                          Container(child: TextButton(onPressed: () {
                            a=stationNameList[index].id;
                            getdata();
                            setState(() {

                            });
                            print(".......................................................$a");
                          }, child:Text("${stationNameList[index].name}",
                            style: mystyleroboto(18,Colors.black,FontWeight.w500),))),),),),

                      SizedBox(width: 40,),
                      Expanded(child:
                      Container(
                        decoration: BoxDecoration(color: Color(0xff015281),borderRadius: BorderRadius.circular(8)),
                         child: ListView.builder(itemCount: stationNameList.length, itemBuilder: (context, index) =>
                          Container(child: TextButton(onPressed: () {
                            b=stationNameList[index].id;
                            getdata();
                            setState(() {

                            });
                            print(".......................................................$b");
                          }, child: Text("${stationNameList[index].name}",
                              style: mystyleroboto(18,Colors.black,FontWeight.w500)))),),), )

                    ],),),
                  )),
                  Expanded(flex: 1, child: Container()),
                  Expanded(flex: 8,child: Container(

                    child: Column(children: [
                      Row(children: [
                        Row(children: [
                          TextButton(
                              onPressed: () {

                                count>0? count--: count==0;
                                setState(() {});
                                getdata();
                              },
                              child: Icon(
                                Icons.remove,
                                size: 25,
                              )),

                          Text("${count}",style:mystyleroboto(18,Colors.black,FontWeight.w500)),

                          TextButton(
                              onPressed: () {
                                count++;
                                setState(() {

                                });
                                getdata();
                              },
                              child: Icon(
                                Icons.add,
                                size: 25,
                              )),
                        ],),
                        Spacer(),

                        Text("Amount Tk:-$value",style: mystyleroboto(18,Colors.black,FontWeight.w500)),
                        SizedBox(width: 10,)
                      ],),

                      SizedBox(width: 10,),
                        Text("Total Amount Tk:-$totalValue",style: mystyleroboto(18,Colors.black,FontWeight.w500))
                    ],),



                  )),
                  Expanded(flex: 4,child: Container(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xff015281)),onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentPage(),));
                  }, child: Text("Payment",style: mystyleroboto(18,Colors.black,FontWeight.w500),)),)),
                  SizedBox(height: 10,),
                ],
              ),
            ) ),
            Expanded(flex: 4,child:Container(
              height: double.infinity,
              color: Colors.white,
              child: Image.asset("images/trainpic.png"),
            ) ),
            
          ],),
        ),
      ),
    );
  }
}
