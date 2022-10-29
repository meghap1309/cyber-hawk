import 'package:flutter/material.dart';
import 'package:untitled3/ui/next4.dart';
class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}
List <String> Textlist=["Tap to Add Image","Tap to Add Video","Tap to Add Audio"];
List <Icon> IconList =[Icon(Icons.photo_album_outlined,color: Color(0xffF5A42B),),Icon(Icons.video_library,color: Color(0xffF5A42B)),Icon(Icons.audiotrack_outlined,color: Color(0xffF5A42B)),];
class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(' Add Images or Text ',style: TextStyle(color: Colors.white,fontFamily:'kumbh',fontSize: 20),),
        backgroundColor: Colors.black,
      ),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context,int index){
                  return Column(
                    children: [
                      Container(
                        color: Color(0xff1C1C1C),
                        height: 167,
                       width: 348,
                       child: Center(
                         child: Column(
                           children: [
                             IconList[index],
                             Text(Textlist[index],),
                           ],
                           mainAxisAlignment: MainAxisAlignment.center
                         ),
                       )
                      ),
                      SizedBox(
                        height: 19,
                      ),


                    ],
                  );
                }
            ),
          Center(
          child: MaterialButton(
          onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4()));
    },
      child: Text('Next',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'kumbh'),),
      color: Color(0xffFFB11F),
    ),),
          ],




        ),


      ),
    );
  }
}
