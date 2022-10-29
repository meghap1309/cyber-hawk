import 'package:flutter/material.dart';
import 'package:untitled3/ui/bottomnav.dart';
List<String> text =["ujmu",'Lorem Ipsum is simply dummy text of the prin..','Lorem Ipsum is simply dummy text of the prin..'];

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(
          'assets/cname.png',
          height: 120,
          width: 130,
        ),
        elevation: 0,
        actions: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.sync,
                        color: Color(0xffFFB11F),
                      ),
                      Text(
                        " Offline sync",
                        style: TextStyle(
                          color: Color(0xffFFB11F),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.transparent)),
        ],
      ),
//extendBodyBehindAppBar: true,
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              subtitle: Text("vvvv"),
              title: const Text('Item 1'),
              trailing: Text("3"),
              leading: Text("hhhh"),
              onTap: () {
                print("b");
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              subtitle: Text('hgfufugj'),
              title: const Text('Item 2'),
              trailing: Text('4'),
              leading: Text('jjhh'),
              onTap: () {
                print('jhjj');
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'We Handle Your Reportings.',
                style: TextStyle(
                    fontSize: 35,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {

                },
                child: Center(
                  child: Text(
                    'Report Time ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                color: Color(0xffFFB11F),
                height: 55,
              ),
            ),
            SizedBox(
              height: 40,
              width: 30,
            ),
            Text(
              'Recommented',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'kumbh',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
              width: 35,
            ),

            SizedBox(height: 8),

                Row(
                  children: [
                    Container(
                     decoration: BoxDecoration(
                    gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff3A3A4D),
                      Color.fromARGB(255, 31, 31, 41)

                    ])),
    width: MediaQuery.of(context).size.width * .28,
    height: 120.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/report.png',
                     ),
                          Text('Reports')
                        ],
                      ),

                      ),
                    SizedBox(
                      width: 30,
                    ),

                    Container(
                      decoration: BoxDecoration(
                    gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
    colors: [
    Color(0xff3A3A4D),
    Color.fromARGB(255, 31, 31, 41)

    ])),
                      width: MediaQuery.of(context).size.width * .28,
                      height: 120.0,
                      child: Column(
                        mainAxisAlignment:  MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/smartphone.png',
                          ),
                          Text('Digital Guide')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Color(0xff3A3A4D),
                            Color.fromARGB(255, 31, 31, 41)
                          ])),
                      width: MediaQuery.of(context).size.width * .28,
                      height: 120.0,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/data-analytics.png',
                          ),
                          Text('My Analytics')
                        ],
                      ),
                    ),
                  ],
                ),

            SizedBox(
              height: 30,
            ),
            Text(
              'Recent Reports',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'kumbh'),
            ),
            SizedBox(
              height: 25,
            ),
Column(
  children: [
    ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context,int index){
          return Container(
            height: 90,
            width: 50,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/macaw.jpg'),radius: 40,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text('Online Reporting',style:TextStyle(color: Color(0xff5EBC74),backgroundColor:Color(0xff4F6942))),


                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Text('Instagram',style: TextStyle( color: Colors.white,backgroundColor:Color(0xff3A3A4D)),),
                        ),

                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Text('Suspect',style: TextStyle( color: Colors.white,backgroundColor:Color(0xff3A3A4D)),),
                        ),

                      ],
                    ),
                    // Text(text[index]),
                  ],
                )
              ],
            ),
          );
        }
    )
  ],
)


    ]),
      )  );
  }
}
