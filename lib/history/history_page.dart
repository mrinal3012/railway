import 'package:flutter/material.dart';
import 'package:railway/data/model_page.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {

  final historyValue=historyList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(width: double.infinity,
      height: double.infinity,
        child: ListView.builder(
          itemCount: historyList.length,
          itemBuilder: (context, index) =>
              Container(height: 160,
              color: Colors.white,
              width: double.infinity,
              child: Column(children: [
                Container(
                  height: 154,
                  color: Colors.white,
                  child: Row(children: [
                    // Container(child: Image.asset("${historyValue[index].name}"),)
                    Expanded(flex: 2, child: Container(height: 50,
                        width: 50,

                        child: Image(image: AssetImage("${historyList[index].image}")),
                        // child: Image(image: AssetImage("${historyList[index].image}"))
                    )),
                    Expanded(flex: 8, child: Container(child:Text("${historyList[index].name}"),)),
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 5),
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 2,),

                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 5),
                  child: Container(
                    height: 2,
                    color: Colors.red,
                  ),
                ),

              ],))
          ,)

        // SingleChildScrollView(
        //   child: Column(children: [
        //     Container(height: 200,
        //     width: double.infinity,
        //       child: Row(
        //         children: [
        //
        //         ],
        //       ),
        //     )]),)
        ),
    );
  }
}

