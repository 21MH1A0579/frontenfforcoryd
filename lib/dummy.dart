//
// import 'package:flutter/material.dart';
// import 'package:frontenfforcoryd/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Dummy extends StatefulWidget {
//   const Dummy({super.key});
//
//   @override
//   State<Dummy> createState() => _DummyState();
// }
//
// class _DummyState extends State<Dummy> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: ListView.builder(
//           itemCount: 5,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25.0),
//                 border: Border.all(color: Colors.grey, width: 3),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust button position
//                     children: [
//                       Flexible( // Wrap text in "Name" section
//                         child: Text(
//                           "Name:\nShankar kumar",
//                           style: GoogleFonts.inika(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                         child: CustomButton(
//                           text: "Accept Request",
//                           iconcolor: Colors.green.shade900,
//                           fontsize: 16,
//                           Custombuttonpressed: () {},
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Divider(thickness: 2, color: Colors.green),
//                   Row( // Wrap text in "FROM" and "TO" sections
//                     children: [
//                       Flexible(
//                         child: Text(
//                           "FROM:\nAmmerpeta, Hyderabad Telengana",
//                           style: GoogleFonts.inika(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding:  EdgeInsets.symmetric(vertical: 5,horizontal: MediaQuery.of(context).size.width/3),
//                     child: Icon(Icons.route, color: Colors.green.shade900, size: 35),
//                   ),
//                   Row( // Wrap text in "TO" section
//                     children: [
//                       Flexible(
//                         child: Text(
//                           "TO:\nJagadamba,Vishakapatnam, Andhra Pradesh",
//                           style: GoogleFonts.inika(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/http.dart' as http;
// import 'package:searchbar/Push%20Notification/push_notifications_system.dart';
// import 'package:searchbar/functions/latlngtoaddress/latlng_to_address.dart';
// import 'package:searchbar/models/similarPath_mode.dart';
// import 'dart:convert';
// import 'package:provider/provider.dart';
// import 'package:searchbar/AuthModel/model/usermodel.dart';
// import 'package:searchbar/AuthModel/provider/auth_provider.dart';
//
// import 'package:searchbar/functions/get_waypoints.dart';
// import 'package:searchbar/screens/map_page.dart';
//
// import 'package:uuid/uuid.dart';
//
// class SimilarPathsScreen extends StatefulWidget {
//   SimilarPathsScreen(this.user_origin, this.user_destination, this.points,
//       {Key? key})
//       : super(key: key);
//   List<Map<String, double>> points;
//   LatLng user_origin, user_destination;
//   Set<Polyline> polylines = {};
//
//   @override
//   _SimilarPathsScreenState createState() => _SimilarPathsScreenState();
// }
//
// class _SimilarPathsScreenState extends State<SimilarPathsScreen> {
//   List<dynamic> _paths = [];
//   var flag = false;
//   late UserModel autModel;
//   final uuid = Uuid();
//
//   @override
//   void initState() {
//     super.initState();
//     final ap = Provider.of<AuthProvider>(context, listen: false);
//     autModel = ap.userModel;
//     fetchData();
//   }
//
//   fetchData() async {
//     final dataToBeSent = {
//       'waypoints': widget.points,
//       'startLocation': {
//         'latitude': widget.user_origin.latitude,
//         'longitude': widget.user_origin.longitude
//       },
//       'dropLocation': {
//         'latitude': widget.user_destination.latitude,
//         'longitude': widget.user_destination.longitude
//       }
//     };
//     const url = "https://coryd-sharerides.onrender.com/fetchAllSimilarPaths";
//
//     final response = await http.post(
//       Uri.parse(url),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(dataToBeSent),
//     );
//
//     if (response.statusCode == 200) {
//       Map<String, dynamic> temp = jsonDecode(response.body);
//       List<dynamic> tempSimilarPaths = temp['similarPaths'];
//       List<SimilarPath> similarPaths = [];
//
//       await Future.wait(tempSimilarPaths.map((item) async {
//         double pickLat =
//         item['similarity']['pickuplocation']['latitude'].toDouble();
//         double pickLng =
//         item['similarity']['pickuplocation']['longitude'].toDouble();
//         double dropLat =
//         item['similarity']['droplocation']['latitude'].toDouble();
//         double dropLng =
//         item['similarity']['droplocation']['longitude'].toDouble();
//
//         String pickloc =
//         await LocationConverter().convertLatLngToAddress(pickLat, pickLng);
//         String dropLoc =
//         await LocationConverter().convertLatLngToAddress(dropLat, dropLng);
//         similarPaths.add(SimilarPath(
//           name: item['name'],
//           driverID: item['driver_id'],
//           firebaseFCM: item['firebaseFcm'],
//           routeId: item['route_id'],
//           similarity: item['similarity']['similarity'].toDouble(),
//           pickupLoc: pickloc,
//           dropLoc: dropLoc,
//           pickuplat: pickLat.toString(),
//           pickuplng: pickLng.toString(),
//           droplat: dropLat.toString(),
//           droplng: dropLng.toString(),
//         ));
//       }));
//
//       flag = true;
//
//       _paths = similarPaths;
//       setState(() {});
//     } else {
//       throw Exception('Failed to load paths');
//     }
//   }
//
//   String generateOTP() {
//     final otp = Random().nextInt(900000) + 100000;
//     return otp.toString();
//   }
//
//   void sendRideRequest(
//       String routeId,
//       String firebaseFCM,
//       String pickup,
//       String dropLoc,
//       String driverID,
//       String pickupLat,
//       String pickuplng,
//       String droplat,
//       String droplng,
//       BuildContext context) async {
//     final RequestUUID = uuid.v4();
//     final user_FCM = await PushNotification().getDeviceToken();
//     final dataToBeSent = {
//       'request_id': RequestUUID,
//       'route_id': routeId,
//       'FirebaseFCM': firebaseFCM,
//       'driver_id': driverID,
//       'User_ID': autModel.uid,
//       'user_FirebaseFCM': user_FCM,
//       'name': autModel.firstname,
//       'age': 21,
//       'gender': 'M',
//       'pickup': pickup,
//       'drop': dropLoc,
//       'opened': 1,
//       'datesent': DateTime.now().toIso8601String(),
//       'phone_number': autModel.phonenumber,
//       'status': 0,
//       'payment': 24,
//       'pickuplatlng': {
//         'latitude': pickupLat.toString(),
//         'longitude': pickuplng.toString(),
//       },
//       'droplatlng': {
//         'latitude': droplat.toString(),
//         'longitude': droplng.toString(),
//       },
//       'pickupotp': generateOTP(),
//       'dropotp': generateOTP(),
//     };
//
//     final url = "https://coryd-sharerides.onrender.com/sendRequest/$routeId";
//
//     final response = await http.post(
//       Uri.parse(url),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(dataToBeSent),
//     );
//
//     if (response.statusCode == 200) {
//       print('Ride request sent successfully');
//       PushNotification().sendNotification(firebaseFCM, routeId, driverID);
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text('Success'),
//             content: Text('Ride request sent successfully'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('OK'),
//               ),
//             ],
//           );
//         },
//       );
//     } else {
//       print('Failed to send ride request');
//
//       final Map<String, dynamic> responseData = json.decode(response.body);
//       final String errorMessage = responseData['error'] ?? 'Unknown error';
//
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Failed to send ride request: $errorMessage'),
//           duration: Duration(seconds: 3),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Widget bodyWidget = const CircularProgressIndicator();
//     if (flag == true) bodyWidget = const Text("No similar rides are there");
//     if (_paths.isNotEmpty) {
//       bodyWidget = ListView.builder(
//         itemCount: _paths.length,
//         itemBuilder: (BuildContext context, int index) {
//           return GestureDetector(
//             onTap: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (cntx) => MapPage(widget.user_origin,
//                       widget.user_destination, _paths[index].routeId),
//                 ),
//               );
//             },
//             child: Container(
//               margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25.0),
//                 border: Border.all(color: Colors.grey, width: 3),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust button position
//                     children: [
//                       Flexible( // Wrap text in "Name" section
//                         child:Text("Name:\n ${_paths[index].name}",
//                           style: GoogleFonts.inika(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                         child: CustomButton(
//                           text: "Accept Request",
//                           iconcolor: Colors.green.shade900,
//                           fontsize: 16,
//                           Custombuttonpressed: () {
//                             sendRideRequest(
//                                         _paths[index].routeId,
//                                         _paths[index].firebaseFCM,
//                                         _paths[index].pickupLoc,
//                                         _paths[index].dropLoc,
//                                         _paths[index].driverID,
//                                         _paths[index].pickuplat,
//                                         _paths[index].pickuplng,
//                                         _paths[index].droplat,
//                                         _paths[index].droplng,
//                                         context,
//                                       );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Divider(thickness: 2, color: Colors.green),
//                   Row( // Wrap text in "FROM" and "TO" sections
//                     children: [
//                       Flexible(
//                         child:Text(
//                           "Pickup Location:\n${_paths[index].pickupLoc}",
//                           style: GoogleFonts.inika(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding:  EdgeInsets.symmetric(vertical: 5,horizontal: MediaQuery.of(context).size.width/3),
//                     child: Icon(Icons.route, color: Colors.green.shade900, size: 35),
//                   ),
//                   Row( // Wrap text in "TO" section
//                     children: [
//                       Flexible(
//                         child: Text(
//                                  "Drop Location:\n${_paths[index].dropLoc}",
//                           style: GoogleFonts.inika(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//           // return ListTile(
//           //   title: Text('Saviour ID: ${_paths[index].name}'),
//           //   subtitle: Column(
//           //     crossAxisAlignment: CrossAxisAlignment.start,
//           //     children: [
//           //       Text(
//           //         'Similarity: ${_paths[index].similarity.toStringAsFixed(2)}',
//           //       ),
//           //       Text(
//           //         'Pickup Location: ${_paths[index].pickupLoc}',
//           //         style: TextStyle(fontWeight: FontWeight.bold),
//           //       ),
//           //       Text(
//           //         'Drop Location: ${_paths[index].dropLoc}',
//           //         style: TextStyle(fontWeight: FontWeight.bold),
//           //       ),
//           //     ],
//           //   ),
//           //   trailing: ElevatedButton(
//           //     onPressed: () {
//           //       sendRideRequest(
//           //         _paths[index].routeId,
//           //         _paths[index].firebaseFCM,
//           //         _paths[index].pickupLoc,
//           //         _paths[index].dropLoc,
//           //         _paths[index].driverID,
//           //         _paths[index].pickuplat,
//           //         _paths[index].pickuplng,
//           //         _paths[index].droplat,
//           //         _paths[index].droplng,
//           //         context,
//           //       );
//           //     },
//           //     child: Text('Send Ride Request'),
//           //   ),
//           //   onTap: () {
//           //     Navigator.push(
//           //       context,
//           //       MaterialPageRoute(
//           //         builder: (cntx) => MapPage(widget.user_origin,
//           //             widget.user_destination, _paths[index].routeId),
//           //       ),
//           //     );
//           //   },
//           // );
//         },
//       );
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('CoRyD'),
//       ),
//       body: bodyWidget,
//     );
//   }
// }