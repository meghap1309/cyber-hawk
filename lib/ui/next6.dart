import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    bool status = true;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Online Reporting'),
        backgroundColor: Colors.black,
      ),
      body:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('Add Crime Details',style: TextStyle(fontSize: 30,fontFamily:'kumbh'),),
                Container(
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 23,),
                      Text("Source"),
                      TextField()
                    ],
                  ),
                ),
                SizedBox(
                  height:12,
                ),
                Container(
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Link'),
                      TextField()
                    ],
                  ),

                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Aware of Species',style:TextStyle(fontSize: 12),),
                          FlutterSwitch(
                            width: 75.0,
                            height: 30.0,
                            valueFontSize: 25.0,
                            toggleSize: 45.0,
                            value: status,
                            borderRadius: 30.0,

                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Is there any Suspect')
                    ],
                  ),
                )

              ],
            ),
          ),



    );
  }
}
