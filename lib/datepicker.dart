import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDatePicker extends StatefulWidget {
  final void Function(String) onDateSelected;

  MyDatePicker({required this.onDateSelected});

  @override
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: selectedDate,
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });

      // Convert selected date to a formatted string
      final formattedDate = "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";

      // Invoke the callback function with the formatted date
      widget.onDateSelected(formattedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade300
        ),
        child: GestureDetector(
          onTap: () => _selectDate(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Date    | ", style: GoogleFonts.inika(fontSize: 22)),
              Text(
                "${selectedDate.day} / ${selectedDate.month} / ${selectedDate.year}",
                style: GoogleFonts.inika(fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: IconButton(
                  splashRadius: 2,
                  tooltip: "Date",
                  onPressed: () => _selectDate(context),
                  icon: Icon(Icons.calendar_month, color: Colors.green, size: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
