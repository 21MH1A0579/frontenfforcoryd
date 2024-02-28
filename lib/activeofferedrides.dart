import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontenfforcoryd/saviorprofile.dart';
import 'package:frontenfforcoryd/textfeild.dart';
import 'package:google_fonts/google_fonts.dart';
class ActiveOfferedRides extends StatefulWidget {
  const ActiveOfferedRides({super.key});

  @override
  State<ActiveOfferedRides> createState() => _ActiveOfferedRidesState();
}

class _ActiveOfferedRidesState extends State<ActiveOfferedRides> {
  final start=new TextEditingController();
  final end=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Active Offered Rides"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            InputTextFeild(textEditingController: start, icon: Icons.start, hintText: "Enter Source Location", helperText: " ", onchanged: (){}, onTap: (){}),
            InputTextFeild(textEditingController: end, icon: Icons.pin_end_sharp, hintText: "Enter destination Location", helperText: " ", onchanged: (){}, onTap: (){}),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SaviorProfile()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25)
                ),
                height: 180,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("images/motorcyclesvg.svg",
                    height: 60,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Shankar",style: GoogleFonts.inika(fontSize: 22,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text("From :GachiBowli,Hyderabad",style: GoogleFonts.inika(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 7,),
                          Text("To:Gajuwaka Vishakapatnam",style: GoogleFonts.inika(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )

                  ]
                ),
              ),
            )


          ],
        ),
      ),

    );
  }
}
