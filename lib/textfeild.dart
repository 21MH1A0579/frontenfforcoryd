import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextFeild extends StatelessWidget {
  String hintText;
  String helperText;
  IconData icon;
  VoidCallback onTap;
  Function onchanged;
  TextEditingController textEditingController;
   InputTextFeild({super.key,required this.textEditingController,required this.icon,required this.hintText,required this.helperText,required this.onchanged,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      child: TextFormField(
        onChanged: (value) => onchanged,
        controller: textEditingController,
        decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(icon,color: Colors.green,),
          fillColor: Colors.grey.shade300,
          focusColor: Colors.green,
          enabled: true,
          helperText: helperText,
          hintText: hintText,
          hintStyle: GoogleFonts.inika(fontWeight: FontWeight.bold,fontSize: 18),
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
    );
  }
}
