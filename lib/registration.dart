
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled3/bloc/signup_bloc.dart';

import 'ui/Login 1.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var username=TextEditingController();
  var password=TextEditingController();
  var role=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body:
      Column(

        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(child: Text("Create an account",style: TextStyle(fontSize: 25,fontFamily: "kumbh"),)),
          ),

        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: username,
            style: TextStyle(color: Colors.white),
            decoration: (InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Phone Number',
                  style:  TextStyle(
                    fontSize: 20,
                    fontFamily: 'kumbh',
                    color: Colors.white,

                  )),
            )),
          ),
        ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password,
              style: TextStyle(color: Colors.white),
              decoration: (InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Password',
                    style:  TextStyle(
                      fontSize: 20,
                      fontFamily: 'kumbh',
                      color: Colors.white,
                    )),
              )),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: role,
              style: TextStyle(color: Colors.white),
              decoration: (InputDecoration(
                border: OutlineInputBorder(),

                label: Text('Role',
                    style:  TextStyle(
                      fontSize: 20,
                      fontFamily: 'kumbh',
                      color: Colors.white,
                    )),
              )),
            ),
          ),
           MaterialButton(onPressed:(){
            BlocProvider.of<SignupBloc>(context).add(GetSignupevent(username: username.text,password: password.text,role:role.text));
          },
            color:Color(0xffFFB11F),
            child:BlocConsumer<SignupBloc,SignupStates>(
                listener: ((context,state){
                  if(state is SignupError){
                    Fluttertoast.showToast(msg: state.error.toString());
                  }
                  if(state is SignupSuccess){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                  }
                }),builder: (context,state){
              if(state is Fetching){
                return
                  CircularProgressIndicator();
              }else{
                return const Text("Login",style: TextStyle(fontSize: 17.5),);
              }
            }),

          ),

  ],
      
      ),
    );
  }
}
