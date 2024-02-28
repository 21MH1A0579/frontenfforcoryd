import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontenfforcoryd/widgets.dart';
class AllRides extends StatefulWidget {
  const AllRides({super.key});

  @override
  State<AllRides> createState() => _AllRidesState();
}

class _AllRidesState extends State<AllRides> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                      child: Image.asset("images/scotyriding.png")),
                ),
                SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: RideTypeConatiner(from: "Gowldoddy, Hyderabad", to: "Nanakramguda, Hyderabad", time: "8:30 AM", date: "26-01-2024", typeofride: "Taking"),
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: RideTypeConatiner(from: "Gowldoddy, Hyderabad", to: "Nanakramguda, Hyderabad", time: "8:30 AM", date: "26-01-2024", typeofride: "offered"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: RideTypeConatiner(from: "Gowldoddy, Hyderabad", to: "Nanakramguda, Hyderabad", time: "8:30 AM", date: "26-01-2024", typeofride: "Taking"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: RideTypeConatiner(from: "Gowldoddy, Hyderabad", to: "Nanakramguda, Hyderabad", time: "8:30 AM", date: "26-01-2024", typeofride: "offered"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: RideTypeConatiner(from: "Gowldoddy, Hyderabad", to: "Nanakramguda, Hyderabad", time: "8:30 AM", date: "26-01-2024", typeofride: "offered"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: RideTypeConatiner(from: "Gowldoddy, Hyderabad", to: "Nanakramguda, Hyderabad", time: "8:30 AM", date: "26-01-2024", typeofride: "Taking"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
