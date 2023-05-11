import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/lend.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file/open_file.dart';

class addCar extends StatefulWidget {
  const addCar({Key? key}) : super(key: key);

  @override
  State<addCar> createState() => _addCarState();
}

class _addCarState extends State<addCar> {
  @override
  bool availability = false;

  Widget build(BuildContext context) {
    void openFile(PlatformFile file) {
      OpenFile.open(file.path!);
    }

    TextEditingController modelId = TextEditingController();
    FocusNode model = FocusNode();
    TextEditingController carNumber = TextEditingController();
    FocusNode number = FocusNode();
    TextEditingController kmsDriven = TextEditingController();
    FocusNode kms = FocusNode();
    TextEditingController fname = TextEditingController();
    FocusNode f = FocusNode();
    TextEditingController mname = TextEditingController();
    FocusNode m = FocusNode();
    TextEditingController lname = TextEditingController();
    FocusNode l = FocusNode();
    TextEditingController phone = TextEditingController();
    FocusNode p = FocusNode();
    TextEditingController noOfPassengers = TextEditingController();
    FocusNode nop = FocusNode();
    TextEditingController noOfLuggage = TextEditingController();
    FocusNode nol = FocusNode();
    TextEditingController late_fee = TextEditingController();
    FocusNode lf = FocusNode();
    TextEditingController country = TextEditingController();
    FocusNode country_name = FocusNode();
    TextEditingController cost_per_day = TextEditingController();
    FocusNode cpd = FocusNode();

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.045),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("WELCOME!!",
                    style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                            color: highlight,
                            fontSize: width * 0.09,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.double))),
                SizedBox(
                  height: height * 0.07,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Text(
                    "Car Details",
                    style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                      color: highlight,
                      fontSize: width * 0.06,
                    )),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: model,
                    controller: modelId,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Model Id',
                      labelStyle: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: number,
                    controller: carNumber,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Car Number',
                      labelStyle: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Text(
                    "Owner Details",
                    style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                      color: highlight,
                      fontSize: width * 0.06,
                    )),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: f,
                    controller: fname,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'First Name',
                      labelStyle: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: m,
                    controller: mname,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Middle Name',
                      labelStyle: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: l,
                    controller: lname,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Last Name',
                      labelStyle: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Text(
                    "Car Capacity",
                    style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                      color: highlight,
                      fontSize: width * 0.06,
                    )),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: nop,
                    controller: noOfPassengers,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'No. of passengers',
                      labelStyle: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: nol,
                    controller: noOfLuggage,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'No. of luggage',
                      labelStyle: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Text(
                    "Payment Details",
                    style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                      color: highlight,
                      fontSize: width * 0.06,
                    )),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: cpd,
                    controller: cost_per_day,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Cost per day',
                      labelStyle: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: lf,
                    controller: late_fee,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Late Fee per Hour',
                      labelStyle: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Text(
                    "Availability",
                    style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                      color: highlight,
                      fontSize: width * 0.06,
                    )),
                  ),
                ),
                SizedBox(
                  height: height * 0.014,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            availability = true;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Available",
                              style: TextStyle(
                                  color: highlight, fontSize: width * 0.04),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Container(
                              height: height * 0.02,
                              width: height * 0.02,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: highlight, width: 2),
                                color: (availability == true)
                                    ? highlight
                                    : Colors
                                        .transparent, // Customize the color of the button
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            availability = false;
                          });
                        },
                        child: Row(
                          children: [
                            Text(
                              "Not Available",
                              style: TextStyle(
                                  color: highlight, fontSize: width * 0.04),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Container(
                              height: height * 0.02,
                              width: height * 0.02,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: highlight, width: 2),
                                color: (availability == false)
                                    ? highlight
                                    : Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.035),
                  child: ElevatedButton(
                    onPressed: () {
                      // call this function with the values from textcontroller Future<int> addCar(String carNumber, String numberOfPersons,String numberOfLuggage, String costPerDay, String lateFeePerHour,String availabilityCarFlag, String ownerFirstName, String ownerMiddleName,String ownerLastName, String email)
                      addNewCar(
                          carNumber.text,
                          noOfPassengers.text,
                          noOfLuggage.text,
                          cost_per_day.text,
                          late_fee.text,
                          availability.toString(),
                          fname.text,
                          mname.text,
                          lname.text,
                          emailId);

                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => lend()));
                    },
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
                    ),
                    child: Container(
                      height: height * 0.05,
                      width: width,
                      decoration: BoxDecoration(
                          color: highlight,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "List Your Car",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.025),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
