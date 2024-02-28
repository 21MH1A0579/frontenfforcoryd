import 'package:flutter/material.dart';
import 'package:frontenfforcoryd/accountscreen.dart';
import 'package:frontenfforcoryd/deliveryridescreen.dart';
import 'package:frontenfforcoryd/dummy.dart';
import 'package:frontenfforcoryd/offeraridescreen.dart';
import 'package:frontenfforcoryd/offerordeliversreen.dart';
import 'package:frontenfforcoryd/userprofile.dart';
import 'package:frontenfforcoryd/verificationscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MainSearchBarScreen()));
            }, child: Text("Offer a Ride")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Accountscreen()));
            }, child: Text("Account Screen")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AllDeliveryRides()));
            }, child: Text("DeliverRidescreen")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationScreen()));
            }, child: Text("Verificationscreen")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
            }, child: Text("Userprofile")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OfferorDeliverScreen()));
            }, child: Text("Offer/Deliver Screen")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dummy()));
            }, child: Text("Dummy")),
           ],
        ),
      ),
    );
  }
}
