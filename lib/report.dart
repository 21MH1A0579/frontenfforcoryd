import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
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
                        Text("Rides Rating :",style: GoogleFonts.inika(fontSize: 22,fontWeight: FontWeight.bold),),
                        for(int i=0;i<5;i++) Icon(Icons.star,color: Colors.green,size: 28,),
                        Text("(4.5)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Savior Rating :",style: GoogleFonts.inika(fontSize: 22,fontWeight: FontWeight.bold),),
                        for(int i=0;i<5;i++) Icon(Icons.star,color: Colors.green,size: 28,),
                        Text("(4.5)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
