import 'package:flutter/material.dart';
import 'package:railway/data/custom_widget_page.dart';
import 'package:railway/data/model_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Card")),
          backgroundColor: Colors.white.withOpacity(.1)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Container(
              decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(.1),borderRadius: BorderRadius.circular(12)),
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text("${paymentList[index].name}",style:mystyleroboto(18,Colors.black,FontWeight.w500)),
                  Spacer(),
                  Container(height: 80,width: 80,
                  child: Image.asset("${paymentList[index].image}"),)
                ],
              ),
            ),
        ),
          ),),
      ),
    );
  }
}
