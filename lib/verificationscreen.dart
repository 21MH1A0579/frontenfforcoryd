import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontenfforcoryd/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart'; // Import file_picker package

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController _numberPlateController = TextEditingController();
  String? _drivingLicenseFileName;
  String? _pollutionCardFileName;
  String? _aadhaarCardFileName;
  String? _bikepictureFileName;

  @override
  void dispose() {
    _numberPlateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Verify Your Details\n Before Take a Ride",
                style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              _buildFileSelectionRow(
                context,
                title: "Driving License",
                fileType: FileType.custom,
                allowedExtensions: ['pdf'],
                fileName: _drivingLicenseFileName,
                onFileSelected: (String fileName) {
                  setState(() {
                    _drivingLicenseFileName = fileName;
                  });
                },
              ),
              _buildFileSelectionRow(
                context,
                title: "Pollution Card",
                fileType: FileType.custom,
                allowedExtensions: ['pdf'],
                fileName: _pollutionCardFileName,
                onFileSelected: (String fileName) {
                  setState(() {
                    _pollutionCardFileName = fileName;
                  });
                },
              ),
              _buildFileSelectionRow(context,
                  title: "Bike Picture",
                  fileType: FileType.custom,
                  fileName: _bikepictureFileName,
                  onFileSelected: (String fileName) {
                    setState(() {
                      _bikepictureFileName = fileName;
                    });
                  },
                allowedExtensions: ['jpeg','jpg','png']
              ),
              // _buildFileSelectionRow(
              //   context,
              //   title: "Bike Picture",
              //   fileType: FileType.image, onFileSelected: (String ) {  },
              // ),
              _buildTextInputRow(context, title: "Number Plate"),
              _buildFileSelectionRow(
                context,
                title: "Aadhaar Card",
                fileType: FileType.custom,
                allowedExtensions: ['pdf'],
                fileName: _aadhaarCardFileName,
                onFileSelected: (String fileName) {
                  setState(() {
                    _aadhaarCardFileName = fileName;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: CustomButton(text: "Verify", iconcolor: Colors.green.shade900, Custombuttonpressed: _verifyDetails,fontsize: 18,),
                  // child: ElevatedButton(
                  //   onPressed: _verifyDetails,
                  //   child: Text("Verify"),
                  //   style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
                  //
                  // ),
                ),
              ),
              SizedBox(height: 50),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: (MediaQuery.of(context).size.height) / 2.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        "Connecting Routes\n\nSharing Commutes",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -40,
                    left: (MediaQuery.of(context).size.width) / 3.5,
                    child: CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.green,
                      child: SizedBox(
                        height: 400,
                        width: 600,
                        child: SvgPicture.asset(
                          "images/corydlogo.svg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFileSelectionRow(
      BuildContext context, {
        required String title,
        required FileType fileType,
        List<String>? allowedExtensions,
        String? fileName,
        required void Function(String) onFileSelected,
      }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          GestureDetector(
            onTap: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles(
                type: fileType,
                allowedExtensions: allowedExtensions,
              );
              if (result != null) {
                PlatformFile file = result.files.first;
                onFileSelected(file.name ?? '');
              }
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: Center(
                child: Text(
                  fileName ?? "+ Select a file",
                  style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTextInputRow(BuildContext context, {required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: GoogleFonts.inika(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: TextFormField(
              controller: _numberPlateController,
              decoration: InputDecoration(
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Number plate cannot be empty';
                }
                return null;
              },
            ),
          )
        ],
      ),
    );
  }

  void _verifyDetails() {
    if (_numberPlateController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Number plate cannot be empty')),
      );
      return;
    }

    if (_drivingLicenseFileName == null ||
        _pollutionCardFileName == null ||
        _aadhaarCardFileName == null||_bikepictureFileName==null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select all required files')),
      );
      return;
    }

    // All validations passed, proceed with verification logic
    // e.g., send data to server or navigate to the next screen
    // Reset the text field after verification if needed
    _numberPlateController.clear();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Verification successful')),
    );
  }
}
