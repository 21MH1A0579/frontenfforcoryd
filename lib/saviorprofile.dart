import 'package:flutter/material.dart';
import 'package:frontenfforcoryd/homescreen.dart';
import 'package:frontenfforcoryd/report.dart';
import 'package:frontenfforcoryd/ridesscreen.dart';
import 'package:frontenfforcoryd/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SaviorProfile extends StatefulWidget {
  const SaviorProfile({super.key});

  @override
  State<SaviorProfile> createState() => _SaviorProfileState();
}

class _SaviorProfileState extends State<SaviorProfile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Savior Details"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("From",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),),
                  Text("Hyderabad",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),)
                ],
              ),
              SizedBox(height: 25,),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green.shade800
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("PickUp",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                        Text("GachiBowli",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Drop",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                        Text("Gajuwaka",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("To",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),),
                  Text("Visakhapatnam",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),)
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.green.shade900,
                thickness: 2,
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Available Seats",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),),
                  Text("1         ",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),)
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.green.shade900,
                thickness: 2,
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Co Passengers",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),),
                ],
              ),
              SizedBox(height: 35,),
              Divider(
                color: Colors.green.shade900,
                thickness: 2,
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Savior Details",style: GoogleFonts.inika(color:Colors.green.shade900,fontWeight: FontWeight.bold,fontSize: 22),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange.shade100
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.person,size: 75,),
                          backgroundColor: Colors.green.shade900,
                          radius: 45,
                        ),
                        Column(
                          children: [
                            Text("D Sankar",style: GoogleFonts.inika(fontSize: 32,),),
                            Text("Total Rides :47",style: GoogleFonts.inika(fontSize: 22),)
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Rating :",style: GoogleFonts.inika(fontSize: 28,fontWeight: FontWeight.bold),),
                       for(int i=0;i<5;i++) Icon(Icons.star,color: Colors.green,size: 32,),
                        Text("(4.5)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(text: "Request Ride", iconcolor: Colors.green.shade900, Custombuttonpressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AllRides()));
                  }),
                  SizedBox(
                    height: 35,
                      width: 120,
                      child: CustomButton(text: "Report", iconcolor: Colors.red.shade300, Custombuttonpressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Rating()));

                      }))
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
