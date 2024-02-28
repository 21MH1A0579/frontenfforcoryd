// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class MyTimePicker extends StatefulWidget {
//   @override
//   _MyTimePickerState createState() => _MyTimePickerState();
// }
//
// class _MyTimePickerState extends State<MyTimePicker> {
//   TimeOfDay selectedTime = TimeOfDay.now();
//
//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: selectedTime,
//     );
//
//     if (picked != null && picked != selectedTime) {
//       setState(() {
//         selectedTime = picked;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: Colors.grey.shade300
//         ),
//         child: GestureDetector(
//           onTap: () => _selectTime(context),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(
//                 "Time   | ",
//                 style: GoogleFonts.inika(fontSize: 22),
//               ),
//               Text(
//                 "${selectedTime.hourOfPeriod}:${selectedTime.minute} ${selectedTime.period.name}",
//                 style: GoogleFonts.inika(fontSize: 22),
//               ),
//               IconButton(
//                 splashRadius: 2,
//                 tooltip: "Time",
//                 onPressed: () => _selectTime(context),
//                 icon: Icon(
//                   Icons.access_time_outlined,
//                   color: Colors.green,
//                   size: 30,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTimePicker extends StatefulWidget {
  final void Function(String) onTimeSelected;

  MyTimePicker({required this.onTimeSelected});

  @override
  _MyTimePickerState createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });

      // Convert selected time to a formatted string
      final formattedTime =
          "${selectedTime.hourOfPeriod}:${selectedTime.minute} ${selectedTime.period.name}";

      // Invoke the callback function with the formatted time
      widget.onTimeSelected(formattedTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade300,
        ),
        child: GestureDetector(
          onTap: () => _selectTime(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Time   | ",
                style: GoogleFonts.inika(fontSize: 22),
              ),
              Text(
                "${selectedTime.hourOfPeriod}:${selectedTime.minute} ${selectedTime.period.name}",
                style: GoogleFonts.inika(fontSize: 22),
              ),
              IconButton(
                splashRadius: 2,
                tooltip: "Time",
                onPressed: () => _selectTime(context),
                icon: Icon(
                  Icons.access_time_outlined,
                  color: Colors.green,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
