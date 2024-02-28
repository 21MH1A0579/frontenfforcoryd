import 'package:flutter/material.dart';
import 'package:frontenfforcoryd/datepicker.dart';
import 'package:frontenfforcoryd/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class NeedDeliveryScreen extends StatefulWidget {
  const NeedDeliveryScreen({Key? key}) : super(key: key);

  @override
  _NeedDeliveryScreenState createState() => _NeedDeliveryScreenState();
}

class _NeedDeliveryScreenState extends State<NeedDeliveryScreen> {
  DateTime selectedDate = DateTime.now();
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
   String selecteddate="${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("NEED DELIVERY",style: GoogleFonts.inika(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green),),
              TextFormField(
                controller: fromController,
                decoration: InputDecoration(
                  labelText: "From",
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green.shade900, width: 2),
                  ),
                ),
              ),
              TextFormField(
                controller: toController,
                decoration: InputDecoration(
                  labelText: "To",
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green.shade900, width: 2),
                  ),
                ),
              ),
              MyDatePicker(onDateSelected: (date){
                selecteddate=date;
              }),
              SizedBox(
                height: 50,
                width: 200,
                child: CustomButton(text: "I Need Delivery", iconcolor: Colors.green.shade900, Custombuttonpressed: (){
                  print(selecteddate+fromController.text+toController.text);
                }),
              ),
             SizedBox(height: 300,)
            ],
          ),
        ),
      ),
    );
  }
}
