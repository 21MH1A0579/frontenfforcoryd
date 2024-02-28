import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontenfforcoryd/iwilldeliverscreen.dart';
import 'package:frontenfforcoryd/widgets.dart';

import 'needdelivery.dart';
class OfferorDeliverScreen extends StatefulWidget {
  const OfferorDeliverScreen({super.key});

  @override
  State<OfferorDeliverScreen> createState() => _OfferorDeliverScreenState();
}

class _OfferorDeliverScreenState extends State<OfferorDeliverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: const Color.fromRGBO(216,233, 168, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                SizedBox(
                  height: 50,
                  width:250,
                  child: CustomButton(
                    fontsize: 20,
                    text: "I'll Deliver", iconcolor: Colors.green.shade900, Custombuttonpressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>iwilldeliverScreen()));
                  },
                  ),

                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.green.shade900,
                      borderRadius: BorderRadius.circular(15)),
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: SvgPicture.asset(
                        "images/corydlogo.svg",
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  width: 250,
                  child:CustomButton(text: "Need Person To Deliver", iconcolor: Colors.green.shade900, Custombuttonpressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NeedDeliveryScreen()));
                  },
                  fontsize: 18,)
                ),
                SizedBox(height: MediaQuery.of(context).size.height/7,),
                Stack(
                  clipBehavior: Clip.none,
                  children:[
                    Container(
                      height: (MediaQuery.of(context).size.height)/2.3,
                      width: double.infinity,
                      decoration:  BoxDecoration(
                          color:Colors.green.shade900,
                        //Color.fromARGB(255, 12, 88, 38)
                        // borderRadius: BorderRadius.circular(30)
                      ),
                      child: const Center(child: Text("Connecting Routes\n\nSharing Commutes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),)),

                    ),
                    Positioned(top: -40,
                      left: (MediaQuery.of(context).size.width)/3.5,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.green.shade900,
                        child: SizedBox(
                            height: 400,
                            width: 600,
                            child: SvgPicture.asset("images/corydlogo.svg",fit: BoxFit.fill,)
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
