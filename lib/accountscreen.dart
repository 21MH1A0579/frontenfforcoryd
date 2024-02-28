import 'package:flutter/material.dart';
import 'package:frontenfforcoryd/activeofferedrides.dart';
import 'package:frontenfforcoryd/widgets.dart';
class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: const Color.fromRGBO(216,233, 168, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 75,
                      ),
                      backgroundColor: Colors.green,
                      radius: 45,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Text(
                          "chaitanya chaithu\n\nPh.No: 9573282201",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "cursive"),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "All Trips",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      fontFamily: "Georgia",
                    ),
                  ),
                ),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(text: "Active Offered Rides", iconcolor: Colors.green, Custombuttonpressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ActiveOfferedRides()));
                    }),
                    SizedBox(height: 15,),
                    CustomButton(text: "Active Requested Rides", iconcolor: Colors.green, Custombuttonpressed: (){}),
                    SizedBox(height: 15,),
                    CustomButton(text: "Past Offered Rides", iconcolor: Colors.green, Custombuttonpressed: (){}),
                    SizedBox(height: 15,),
                    CustomButton(text: "Past Requested Rides", iconcolor: Colors.green, Custombuttonpressed: (){})
                  ],
                )
        ],
              
          ),
        ),
      ),
    ),
    );
  }
}
