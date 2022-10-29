import 'package:flutter/material.dart';
import 'package:untitled3/ui/next3.dart';


class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:Text('Online Reporting',style: TextStyle(fontSize: 15,fontFamily: 'kumbh',color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text('Select a Crime Type',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
              //    childAspectRatio: 0.7,
                ),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(height: 150,width: 160,child: Image.asset('assets/Trunk.jpg',height: 150,width: 160,fit: BoxFit.cover,)),
                      Text('Illegal Wildlife Product Trade',style: TextStyle(fontSize: 15,fontFamily: 'kumbh',color:Colors.white),)
                    ],
                  );
                }
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
              },
                child: Text('Next',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'kumbh'),),
                color: Color(0xffFFB11F),
              ),
            )

          ],
        ),
      ),
    );
  }
}
