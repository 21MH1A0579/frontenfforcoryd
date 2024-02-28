import 'package:flutter/material.dart';
import 'package:frontenfforcoryd/datepicker.dart';
import 'package:frontenfforcoryd/homescreen.dart';
import 'package:frontenfforcoryd/selection_vehicle.dart';
import 'package:frontenfforcoryd/textfeild.dart';
import 'package:frontenfforcoryd/timepicker.dart';
import 'package:frontenfforcoryd/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class iwilldeliverScreen extends StatefulWidget {
  const iwilldeliverScreen({super.key});

  @override
  State<iwilldeliverScreen> createState() => _iwilldeliverScreenState();
}

class _iwilldeliverScreenState extends State<iwilldeliverScreen> {
  final TextEditingController _origindeliver = TextEditingController();
  final TextEditingController __destinationdeliver = TextEditingController();
  var vechicleList1 = [0, 0, 0, 0];
  int ?selectedvehicle=0;
  String selecteddate="${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}";
  @override
  void dispose() {
    _origindeliver.dispose();
    __destinationdeliver.dispose();
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    vechicleList1[0]=1;
  }
  void vechicleList(index) {
    vechicleList1 = [0, 0, 0, 0];
    vechicleList1[index] = 1;
    setState(() {
      selectedvehicle=index;
      print(vechicleList1);
    });
  }

  bool isSelected(index) {
    if (vechicleList1[index] == 1) return true;
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Homescreen()));
                    },
                    icon: const Icon(Icons.arrow_back,color: Colors.black,),
                  ),
                ),
                InputTextFeild(textEditingController: _origindeliver,
                    onTap: (){},
                    onchanged: (){},
                    icon: Icons.location_on_rounded,
                    hintText: "From",
                    helperText: "Enter the Starting Point"),
                InputTextFeild(
                    onTap: (){},
                    onchanged: (){},
                    textEditingController: __destinationdeliver,
                    icon: Icons.location_searching_rounded,
                    hintText: "To",
                    helperText: "Enter the Ending Point"),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Select the Vehicle",style: GoogleFonts.inika(color: Colors.grey.shade600,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                SelectionVehicale(vechicleList, isSelected),
                const SizedBox(
                  height: 15,
                ),
                MyDatePicker(
                  onDateSelected: (String dt)
                  {
                    selecteddate=dt;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
               SizedBox
                 (
                 height: 60,
                   child: CustomButton(fontsize: 25,text: "I am Ready", iconcolor: Colors.green.shade900, Custombuttonpressed: (){
                     print(_origindeliver.text+__destinationdeliver.text+selectedvehicle.toString()+selecteddate);
                   }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
