import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/customer.dart';
import 'package:dbs_project/Utils/rent.dart';
import 'package:dbs_project/Utils/upload_dl.dart';
import 'package:dbs_project/Utils/yellow_box.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:dbs_project/views/homescreen.dart';
import 'package:dbs_project/views/signIn.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file/open_file.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    void openFile(PlatformFile file) {
      OpenFile.open(file.path!);
    }

    TextEditingController password = TextEditingController();
    FocusNode pass = FocusNode();
    TextEditingController email = TextEditingController();
    FocusNode e = FocusNode();
    TextEditingController fname = TextEditingController();
    FocusNode f = FocusNode();
    TextEditingController mname = TextEditingController();
    FocusNode m = FocusNode();
    TextEditingController lname = TextEditingController();
    FocusNode l = FocusNode();
    TextEditingController phone = TextEditingController();
    FocusNode p = FocusNode();
    TextEditingController street = TextEditingController();
    FocusNode s = FocusNode();
    TextEditingController city = TextEditingController();
    FocusNode c = FocusNode();
    TextEditingController state = TextEditingController();
    FocusNode state_name = FocusNode();
    TextEditingController country = TextEditingController();
    FocusNode country_name = FocusNode();
    TextEditingController pin = TextEditingController();
    TextEditingController dl = TextEditingController();
    FocusNode pinCode = FocusNode();

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
                    "SignIn Credentials",
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
                    focusNode: e,
                    controller: email,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Email Address',
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
                    controller: password,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Password',
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Text(
                    "Personal Details",
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
                  height: height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: p,
                    controller: phone,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Phone Number',
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Text(
                    "Address",
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
                    focusNode: s,
                    controller: street,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Street Name',
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
                    focusNode: c,
                    controller: city,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'City',
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
                    focusNode: pinCode,
                    controller: pin,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Pincode',
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
                Yellow_Box(width: width, dl: dl, height: height),
                SizedBox(
                  height: height * 0.018,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    // focusNode: state_name,
                    controller: state,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'State',
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
                    //focusNode: country_name,
                    controller: country,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Country',
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Text(
                    "Driving License",
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
                  child: GestureDetector(
                    onTap: () async {
                      final result = await FilePicker.platform.pickFiles();
                      if (result == null) {
                        return;
                      }
                      final file = result.files.first;
                      //openFile(file);
                      final path = file.path;
                      final filename = file.name;
                      UploadDl(
                          context, width, height, filename, openFile, file);
                    },
                    child: Container(
                      width: width,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: highlight, width: 2)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Upload ",
                              style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * 0.02,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Icon(
                              Icons.upload,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                  child: ElevatedButton(
                    onPressed: () async {
                      //
                      //TextEditingController password = TextEditingController();
                      print(email.text);
                      var result = await signup(
                          fname.text,
                          mname.text,
                          lname.text,
                          street.text,
                          city.text,
                          state.text,
                          country.text,
                          pin.text,
                          dl.text,
                          email.text,
                          password.text,
                          phone.text);
                      if (result == 1) {
                        Customer customer = await fetchCustomer(email.text);
                        fetchAvailableCars();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                                builder: (context) => homescreen(
                                      customer: customer,
                                    )));
                      }

                      print(result); // 1 or 0
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
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.025),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already an existing user?",
                        style: TextStyle(
                            color: Colors.white, fontSize: width * 0.04),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (context) => signIN()));
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.yellow, fontSize: width * 0.04),
                          )),
                    ],
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
