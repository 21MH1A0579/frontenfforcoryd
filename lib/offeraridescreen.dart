import 'package:flutter/material.dart';
import 'package:frontenfforcoryd/datepicker.dart';
import 'package:frontenfforcoryd/homescreen.dart';
import 'package:frontenfforcoryd/selection_vehicle.dart';
import 'package:frontenfforcoryd/textfeild.dart';
import 'package:frontenfforcoryd/timepicker.dart';
import 'package:frontenfforcoryd/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class MainSearchBarScreen extends StatefulWidget {
  const MainSearchBarScreen({super.key});

  @override
  State<MainSearchBarScreen> createState() => _MainSearchBarScreenState();
}

class _MainSearchBarScreenState extends State<MainSearchBarScreen> {
  final TextEditingController _origin = TextEditingController();
  final TextEditingController _destination = TextEditingController();
  var vechicleList1 = [0, 0, 0, 0];
  int ?selectedvehicle=0;
  int counter=1;
  String? selecteddate=DateTime.now().toString();
  String? selectedtime=DateTime.now().toString();
  Map<int,int>mp={
    0:1,
    1:4,
    2:6,
    3:30
  };
  
  @override
  void dispose() {
    _origin.dispose();
    _destination.dispose();
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
      counter=1;
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                InputTextFeild(textEditingController: _origin,
                    onTap: (){},
                    onchanged: (){},
                    icon: Icons.location_on_rounded,
                    hintText: "From",
                    helperText: "Enter the Starting Point"),
                InputTextFeild(
                    onTap: (){},
                    onchanged: (){},
                    textEditingController: _destination,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Seats you Offer :",style: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 22),),
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(25),
                     color: Colors.green.shade900
                   ),
                   child: Row(
                     children: [
                       IconButton(onPressed: (){
                         setState(() {
                           print(counter);
                         });
                         if(counter>1)
                           {
                             counter--;
                           }
                       }, icon: Icon(Icons.remove,color: counter==1?Colors.grey:Colors.white,)),
                       Text(counter.toString(),style: GoogleFonts.inika(color: Colors.white,fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){
                         if(counter<mp[selectedvehicle]!.toDouble())
                           {
                             counter++;
                             setState(() {
                               print(counter);

                             });
                           }
                       }, icon:  Icon(Icons.add,
                           color:counter==mp[selectedvehicle]?Colors.grey:Colors.white
                       )),

                     ],
                   ),
                 )

                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                MyDatePicker(
                  onDateSelected: (String dt)
                  {
                    selecteddate=dt;
                  },
                ),
                const SizedBox(height: 25,),
                MyTimePicker(
                  onTimeSelected: (String time)
                  {
                    selectedtime=time;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   CustomButton(text: "Find near me", iconcolor: Colors.green, Custombuttonpressed: (){
                     print(selecteddate);
                     print(selectedtime);
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const Homescreen()));},),
                    CustomButton(text: "Offer a Ride", iconcolor: Colors.green, Custombuttonpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Homescreen()));})
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
