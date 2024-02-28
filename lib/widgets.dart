import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class CustomButton extends StatelessWidget {
  final String text;
   final Color? iconcolor;
   final  VoidCallback? Custombuttonpressed;
   final double? fontsize;
    CustomButton(
      {super.key,required this.text,required this.iconcolor,required this.Custombuttonpressed,this.fontsize}
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
              TextStyle(fontWeight: FontWeight.w500,fontSize: fontsize)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
            backgroundColor:MaterialStateProperty.all(iconcolor),
            elevation: MaterialStateProperty.all(15),
            shadowColor: MaterialStateProperty.all(iconcolor)
        ),
        onPressed: Custombuttonpressed, child: Text(text));
  }
}
class RideTypeConatiner extends StatelessWidget {
  final String from;
  final String to;
  final String date;
  final String time;
  final String typeofride;



  const RideTypeConatiner({super.key,required this.from,required this.to,required this.time,required this.date,required this.typeofride});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.orange.shade200,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("From : ",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(from,style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("To      : ",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(to,style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Time : ",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(time,style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Date  : ",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(date,style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: -33,
          right:-12,
            child: CircleAvatar(
              radius:40,
          child: Text(
            typeofride+" Ride",textAlign: TextAlign.center,style: GoogleFonts.inika(color:Colors.white,fontWeight: FontWeight.bold),),
              backgroundColor:typeofride.toLowerCase()=="offered"? Colors.green.shade900:Colors.orange.shade700,
        ) )
      ],
    );
  }
}
class DeliveryTypeConatiner extends StatelessWidget {
  final String location;
  final String date;
  final String time;
  final String typeofdelivery;



  const DeliveryTypeConatiner({super.key,required this.location,required this.time,required this.date,required this.typeofdelivery});

  @override
  Widget build(BuildContext context) {
    void _launchDialPad(String phoneNumber) async {
      String url = 'tel:$phoneNumber';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: typeofdelivery.toLowerCase()=="pickup"?190:232,
          decoration: BoxDecoration(
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(25)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Location : ",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(location,style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Time : ",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(time,style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Date  : ",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(date,style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                       Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.phone,color: Colors.green.shade900,size: 28,),
                          Text(" Call Passenger",style: GoogleFonts.inika(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.green.shade900,size: 28,),
                          Text("View on Map",style: GoogleFonts.inika(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )

                  ],
                ),
                typeofdelivery.toLowerCase()=="drop"?Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(text: "Collect Money", iconcolor: Colors.green.shade900, Custombuttonpressed: (){

                  }),
                ):SizedBox(height: 1,),
              ],
            ),
          ),
        ),
        Positioned(
            top: -33,
            right:-12,
            child: CircleAvatar(
              radius:40,
              child: Text(
                typeofdelivery,textAlign: TextAlign.center,style: GoogleFonts.inika(color:Colors.white,fontWeight: FontWeight.bold),),
              backgroundColor:typeofdelivery.toLowerCase()=="pickup"? Colors.green.shade900:Colors.orange.shade700,
            ) )
      ],
    );
  }
}




