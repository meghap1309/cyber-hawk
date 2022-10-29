import 'package:flutter/material.dart';

import 'package:untitled3/ui/next5.dart';
class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}
List <String> photolist=  ['assets/Tiger.jpg','assets/macaw.jpg'];
List <String> textlist= ['Indian','Exotic'];
class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Digital Guide',style: TextStyle(color: Colors.white,fontFamily:'kumbh',fontSize: 20),),
        backgroundColor: Colors.black,
      ),
      body:
      Column(
        children: [
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                //    childAspectRatio: 0.7,
              ),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(height: 150,width: 160,child: Image.asset(photolist[index],height: 150,width: 160,fit: BoxFit.cover,)),
                    Text(textlist[index],style: TextStyle(fontSize: 15,fontFamily: 'kumbh',color:Colors.white),)
                  ],
                );
              }
          ),
          Center(
            child: MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page5()));
              },
              child: Text('Next',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'kumbh'),),
              color: Color(0xffFFB11F),
            ),),
        ],
      ),



    );
  }
}
