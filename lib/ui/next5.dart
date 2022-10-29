import 'package:flutter/material.dart';
import 'package:untitled3/ui/next6.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}
List <String> photolist=  ['assets/Tiger.jpg','assets/macaw.jpg','assets/reptile.jpg','assets/fish.jpg'];
List <String> textlist= ['Indian','Exotic','Reptile','Marine'];


class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Digital Guide'),
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
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(height: 150,width: 160,child: Image.asset(photolist[index],height: 50,width: 50,fit: BoxFit.cover,)),
                    Text(textlist[index],style: TextStyle(fontSize: 15,fontFamily: 'kumbh',color:Colors.white),)
                  ],
                );
              }
          ),
          Center(
            child: MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page6()));
              },
              child: Text('Next',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'kumbh'),),
              color: Color(0xffFFB11F),
            ),),
        ],
      ),
    );
  }
}
