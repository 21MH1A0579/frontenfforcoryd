import 'package:flutter/material.dart';
import 'package:frontenfforcoryd/homescreen.dart';
import 'package:frontenfforcoryd/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
     TextEditingController pickupcontroller=new TextEditingController();
     TextEditingController dropcontroller=new TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text("User Profile"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "From",
                      style: GoogleFonts.inika(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Hyderabad",
                      style: GoogleFonts.inika(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green.shade800),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "PickUp",
                            style: GoogleFonts.inika(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Text(
                            "GachiBowli",
                            style: GoogleFonts.inika(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Drop",
                            style: GoogleFonts.inika(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Text(
                            "Gajuwaka",
                            style: GoogleFonts.inika(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To",
                      style: GoogleFonts.inika(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Visakhapatnam",
                      style: GoogleFonts.inika(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.green.shade900,
                  thickness: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Savior Details",style: GoogleFonts.inika(color:Colors.green.shade900,fontWeight: FontWeight.bold,fontSize: 22),),
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 175,
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
                              Text("D Sankar",style: GoogleFonts.inika(fontSize: 30,fontWeight: FontWeight.bold),),
                              Text("Total Rides :47",style: GoogleFonts.inika(fontSize: 18,fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Rating :",style: GoogleFonts.inika(fontSize: 24,fontWeight: FontWeight.bold),),
                          for(int i=0;i<5;i++) Icon(Icons.star,color: Colors.green,size: 30,),
                          Text("(4.5)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                otpmethod(pickupcontroller,"Pickup OTP"),
                SizedBox(height: 25,),
                otpmethod(dropcontroller, " Drop  OTP"),
                SizedBox(height: 30,),
                SizedBox(
                    height:55,
                    width: 180,
                    child: CustomButton(
                      fontsize: 18,
                        text: "Reached Pickup", iconcolor: Colors.green.shade900, Custombuttonpressed: (){
                     if((pickupcontroller.text.isEmpty || dropcontroller.text.isEmpty)||(pickupcontroller.text.length<4 && dropcontroller.text.length<4))
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.green,
                                content: Text("Please Enter 4 Digit OTP")
                            )
                        );
                      }
                     else if(pickupcontroller.text==dropcontroller.text)
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                     }
                    else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.green,
                              content: Text("OTP DOESNT MATCH\nPlease Try Again")
                          )
                        );
                      }

                    }))
              ],
            ),
          ),
        ));
  }

  Row otpmethod(TextEditingController pickupcontroller,String name) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(name,style: GoogleFonts.inika(fontSize: 22,fontWeight: FontWeight.bold),),
                  SizedBox(
                    width: 150,
                    height: 45,
                    child: TextFormField(
                      cursorColor: Colors.green.shade900,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                      keyboardType: TextInputType.phone,
                      controller: pickupcontroller,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),
                ],
              );
  }
}
