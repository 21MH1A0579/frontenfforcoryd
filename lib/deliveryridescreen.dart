// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:frontenfforcoryd/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class AllDeliveryRides extends StatefulWidget {
//   const AllDeliveryRides({super.key});
//
//   @override
//   State<AllDeliveryRides> createState() => _AllDeliveryRidesState();
// }
//
// class _AllDeliveryRidesState extends State<AllDeliveryRides> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 18.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Center(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(150),
//                     child: Image.asset("images/scotyriding.png"),
//                   ),
//                 ),
//                 SizedBox(height: 40,),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 25.0),
//                   child: DeliveryTypeConatiner(location: " Gowldoddy,Hyderabad", time: "9:35 PM", date: "11-06-2023", typeofdelivery: "Pickup"),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 25.0),
//                   child: DeliveryTypeConatiner(location: " Gowldoddy,Hyderabad", time: "9:30 PM", date: "11-06-2023", typeofdelivery: "Drop"),
//                 ),
//                 Container(
//                   height: 350,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
//                     border: Border.all(color: Colors.black,width: 2),
//                   ),
//                   child: Column(
//                     children: [
//                       SizedBox(height: 20,),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text("Name :",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),),
//                           Text("Sankar",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),)
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text("Type :",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),),
//                           Text("Pickup",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),)
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text("Location :",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),),
//                           Flexible(
//                             child: Text(
//                               "Ramana Luxary PG and Hostels",
//                               style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),
//                               overflow: TextOverflow.visible,
//                             ),
//                           )
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text("Gender :",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),),
//                           Text("Male",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),)
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10,)
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_swipe_button/flutter_swipe_button.dart';
// import 'package:frontenfforcoryd/homescreen.dart';
// import 'package:frontenfforcoryd/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class AllDeliveryRides extends StatefulWidget {
//   const AllDeliveryRides({Key? key}) : super(key: key);
//
//   @override
//   State<AllDeliveryRides> createState() => _AllDeliveryRidesState();
// }
//
// class _AllDeliveryRidesState extends State<AllDeliveryRides> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//  final otpcontroller=new TextEditingController();
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           reverse: true,
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 20),
//                 Center(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(screenWidth * 0.3),
//                     child: Image.asset("images/scotyriding.png"),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 25.0),
//                   child: DeliveryTypeConatiner(
//                     location: "Gowldoddy, Hyderabad",
//                     time: "9:35 PM",
//                     date: "11-06-2023",
//                     typeofdelivery: "Pickup",
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 25.0),
//                   child: DeliveryTypeConatiner(
//                     location: "Gowldoddy, Hyderabad",
//                     time: "9:30 PM",
//                     date: "11-06-2023",
//                     typeofdelivery: "Drop",
//                   ),
//                 ),
//                 Container(
//                   height: 350,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(35),
//                       topRight: Radius.circular(35),
//                     ),
//                     border: Border.all(color: Colors.black, width: 2),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       _buildInfoRow("Name:", "Sankar"),
//                       _buildInfoRow("Type:", "Pickup"),
//                       _buildInfoRow("Location:", "Ramana Luxary PG and Hostels"),
//                       _buildInfoRow("Gender:", "Male"),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text("Enter OTP here :",
//                             style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 22),
//                           ),
//                           Flexible(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: SizedBox(
//                                 height: 50,
//                                 child: TextFormField(
//                                   controller: otpcontroller,
//                                   decoration: InputDecoration(
//                                     hoverColor: Colors.green,
//                                     enabled: true,
//                                     filled: true,
//                                     focusColor: Colors.green,
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(15),
//                                     )
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           )
//
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 35),
//                         child: SwipeButton(
//                           thumb: SvgPicture.asset("images/corydlogo.svg"),
//                           activeThumbColor: Colors.green,
//                           activeTrackColor: Colors.green.shade900,
//                           inactiveTrackColor: Colors.grey,
//                           child: Text(
//                             "Slide to Check In",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold
//                             ),
//                           ),
//                           onSwipe: () {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 content: Text("Swipped"),
//                                 backgroundColor: Colors.green,
//                               ),
//                             );
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
//                           },
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInfoRow(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 25),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: Text(
//               title,
//               style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 22),
//             ),
//           ),
//           Flexible(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Text(
//                 value,
//                 style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 22),
//                 overflow: TextOverflow.visible,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_swipe_button/flutter_swipe_button.dart';
// import 'package:frontenfforcoryd/homescreen.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class AllDeliveryRides extends StatefulWidget {
//   const AllDeliveryRides({Key? key}) : super(key: key);
//
//   @override
//   State<AllDeliveryRides> createState() => _AllDeliveryRidesState();
// }
//
// class _AllDeliveryRidesState extends State<AllDeliveryRides> {
//   final otpcontroller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           reverse: true,
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 20),
//                 Center(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(screenWidth * 0.3),
//                     child: Image.asset("images/scotyriding.png"),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 25.0),
//                   child: DeliveryTypeConatiner(
//                     location: "Gowldoddy, Hyderabad",
//                     time: "9:35 PM",
//                     date: "11-06-2023",
//                     typeofdelivery: "Pickup",
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 25.0),
//                   child: DeliveryTypeConatiner(
//                     location: "Gowldoddy, Hyderabad",
//                     time: "9:30 PM",
//                     date: "11-06-2023",
//                     typeofdelivery: "Drop",
//                   ),
//                 ),
//                 Container(
//                   height: 350,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(35),
//                       topRight: Radius.circular(35),
//                     ),
//                     border: Border.all(color: Colors.black, width: 2),
//                   ),
//                   child: Sheetcontent(otpcontroller, context),
//                 ),
//                 SizedBox(height: 10),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Column Sheetcontent(TextEditingController otpcontroller, BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         _buildInfoRow("Name:", "Sankar"),
//         _buildInfoRow("Type:", "Pickup"),
//         _buildInfoRow("Location:", "Ramana Luxary PG and Hostels"),
//         _buildInfoRow("Gender:", "Male"),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Text(
//               "Enter OTP here :",
//               style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 22),
//             ),
//             Flexible(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SizedBox(
//                   height: 50,
//                   child: TextFormField(
//                     controller: otpcontroller,
//                     decoration: InputDecoration(
//                       hoverColor: Colors.green,
//                       enabled: true,
//                       filled: true,
//                       focusColor: Colors.green,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 35),
//           child: SwipeButton(
//             thumb: SvgPicture.asset("images/corydlogo.svg"),
//             activeThumbColor: Colors.green,
//             activeTrackColor: Colors.green.shade900,
//             inactiveTrackColor: Colors.grey,
//             child: Text(
//               "Slide to Check In",
//               style: TextStyle(
//                   color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             onSwipe: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text("Swiped"),
//                   backgroundColor: Colors.green,
//                 ),
//               );
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
//             },
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget _buildInfoRow(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: Text(
//               title,
//               style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 22),
//             ),
//           ),
//           Flexible(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Text(
//                 value,
//                 style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 22),
//                 overflow: TextOverflow.visible,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class DeliveryTypeConatiner extends StatelessWidget {
//   final String location;
//   final String date;
//   final String time;
//   final String typeofdelivery;
//
//   const DeliveryTypeConatiner({
//     Key? key,
//     required this.location,
//     required this.time,
//     required this.date,
//     required this.typeofdelivery,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         Container(
//           height: typeofdelivery.toLowerCase() == "pickup" ? 190 : 232,
//           decoration: BoxDecoration(
//               color: Colors.orange.shade200,
//               borderRadius: BorderRadius.circular(25)),
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Location : ",
//                       style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                     Text(
//                       location,
//                       style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Time : ",
//                       style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                     Text(
//                       time,
//                       style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Date  : ",
//                       style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                     Text(
//                       date,
//                       style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Row(
//                         children: [
//                           Icon(Icons.phone, color: Colors.green.shade900, size: 28),
//                           Text(
//                             " Call Passenger",
//                             style: GoogleFonts.inika(fontSize: 18, fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Row(
//                         children: [
//                           Icon(Icons.location_on_outlined, color: Colors.green.shade900, size: 28),
//                           Text(
//                             "View on Map",
//                             style: GoogleFonts.inika(fontSize: 18, fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 typeofdelivery.toLowerCase() == "drop"
//                     ? Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: CustomButton(
//                     text: "Collect Money",
//                     iconcolor: Colors.green.shade900,
//                     Custombuttonpressed: () {
//                       _showBottomSheet(context);
//                     },
//                   ),
//                 )
//                     : SizedBox(height: 1),
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           top: -33,
//           right: -12,
//           child: CircleAvatar(
//             radius: 40,
//             child: Text(
//               typeofdelivery,
//               textAlign: TextAlign.center,
//               style: GoogleFonts.inika(color: Colors.white, fontWeight: FontWeight.bold),
//             ),
//             backgroundColor:
//             typeofdelivery.toLowerCase() == "pickup" ? Colors.green.shade900 : Colors.orange.shade700,
//           ),
//         )
//       ],
//     );
//   }
//
//   void _showBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Sheetcontent(TextEditingController(), context);
//       },
//     );
//   }
// }
//
// class CustomButton extends StatelessWidget {
//   final String text;
//   final Color iconcolor;
//   final Function()? Custombuttonpressed;
//
//   const CustomButton({
//     Key? key,
//     required this.text,
//     required this.iconcolor,
//     required this.Custombuttonpressed,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: Custombuttonpressed,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(Icons.monetization_on, color: iconcolor),
//           SizedBox(width: 8),
//           Text(text),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:frontenfforcoryd/homescreen.dart';
import 'package:frontenfforcoryd/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AllDeliveryRides extends StatefulWidget {
  const AllDeliveryRides({Key? key}) : super(key: key);

  @override
  State<AllDeliveryRides> createState() => _AllDeliveryRidesState();
}

class _AllDeliveryRidesState extends State<AllDeliveryRides> {
  final otpcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.3),
                    child: Image.asset("images/scotyriding.png"),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: DeliveryTypeContainer(
                    location: "Gowldoddy, Hyderabad",
                    time: "9:35 PM",
                    date: "11-06-2023",
                    typeofdelivery: "Pickup",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: DeliveryTypeContainer(
                    location: "Gowldoddy, Hyderabad",
                    time: "9:30 PM",
                    date: "11-06-2023",
                    typeofdelivery: "Drop",
                  ),
                ),
                // Container(
                //   height: 350,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(35),
                //       topRight: Radius.circular(35),
                //     ),
                //     border: Border.all(color: Colors.black, width: 2),
                //   ),
                //   child: SheetContent(otpcontroller, context),
                // ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DeliveryTypeContainer extends StatelessWidget {
  final String location;
  final String date;
  final String time;
  final String typeofdelivery;

  const DeliveryTypeContainer({
    Key? key,
    required this.location,
    required this.time,
    required this.date,
    required this.typeofdelivery,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: typeofdelivery.toLowerCase() == "pickup" ? 190 : 232,
          decoration: BoxDecoration(
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Location : ",
                      style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      location,
                      style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Time : ",
                      style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      time,
                      style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Date  : ",
                      style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      date,
                      style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.green.shade900, size: 28),
                          Text(
                            " Call Passenger",
                            style: GoogleFonts.inika(fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: Colors.green.shade900, size: 28),
                          Text(
                            "View on Map",
                            style: GoogleFonts.inika(fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                typeofdelivery.toLowerCase() == "drop"
                    ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                    text: "Collect Money",
                    iconcolor: Colors.green.shade900,
                    Custombuttonpressed: () {
                      _showBottomSheet(context);
                    },
                  ),
                )
                    : SizedBox(height: 1),
              ],
            ),
          ),
        ),
        Positioned(
          top: -33,
          right: -12,
          child: CircleAvatar(
            radius: 40,
            child: Text(
              typeofdelivery,
              textAlign: TextAlign.center,
              style: GoogleFonts.inika(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: typeofdelivery.toLowerCase() == "pickup" ? Colors.green.shade900 : Colors.orange.shade700,
          ),
        )
      ],
    );
  }
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(35)), isScrollControlled: true, // Added line
     // resizeToAvoidBottomInset: true, // Added line
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(child: AnimatedPadding( padding: MediaQuery.of(context).viewInsets,curve: Curves.decelerate,
            duration: const Duration(milliseconds: 1),child: SheetContent(TextEditingController(), context)));
      },
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              title,
              style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                value,
                style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 22),
                overflow: TextOverflow.visible,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Padding SheetContent(TextEditingController otpcontroller, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildInfoRow("Name:", "Sankar"),
          _buildInfoRow("Type:", "Pickup"),
          _buildInfoRow("Location:", "Ramana Luxary PG and Hostels"),
          _buildInfoRow("Gender:", "Male"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Enter OTP here :",
                style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      controller: otpcontroller,
                      decoration: InputDecoration(
                        hoverColor: Colors.green,
                        enabled: true,
                        filled: true,
                        focusColor: Colors.green,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 35),
            child: SwipeButton(
              thumb: SvgPicture.asset("images/corydlogo.svg"),
              activeThumbColor: Colors.green,
              activeTrackColor: Colors.green.shade900,
              inactiveTrackColor: Colors.grey,
              child: Text(
                "Slide to Check In",
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onSwipe: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Swiped"),
                    backgroundColor: Colors.green,
                  ),
                );
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
              },
            ),
          )
        ],
      ),
    );
  }
}

