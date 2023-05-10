import 'package:dbs_project/Constants/constantColors.dart';
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
  Widget build(BuildContext context) {
    void openFile(PlatformFile file) {
      OpenFile.open(file.path!);
    }
    TextEditingController carColor= TextEditingController();
    FocusNode color=FocusNode();
    TextEditingController modelName= TextEditingController();
    FocusNode model=FocusNode();
    TextEditingController carNumber= TextEditingController();
    FocusNode number=FocusNode();
    TextEditingController kmsDriven= TextEditingController();
    FocusNode kms=FocusNode();
    TextEditingController fname= TextEditingController();
    FocusNode f=FocusNode();
    TextEditingController mname= TextEditingController();
    FocusNode m=FocusNode();
    TextEditingController lname= TextEditingController();
    FocusNode l=FocusNode();
    TextEditingController phone= TextEditingController();
    FocusNode p=FocusNode();
    TextEditingController noOfPassengers= TextEditingController();
    FocusNode nop=FocusNode();
    TextEditingController noOfLuggage= TextEditingController();
    FocusNode nol=FocusNode();
    TextEditingController late_fee= TextEditingController();
    FocusNode lf=FocusNode();
    TextEditingController country= TextEditingController();
    FocusNode country_name=FocusNode();
    TextEditingController cost_per_day= TextEditingController();
    FocusNode cpd=FocusNode();

    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: height*0.02, horizontal: width*0.045),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("WELCOME!!", style: GoogleFonts.ubuntu(textStyle: TextStyle(color: highlight, fontSize: width*0.09, decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.double))),
                SizedBox(
                  height: height*0.07,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: width*0.03),
                  child: Text("Car Details", style: GoogleFonts.ubuntu(textStyle: TextStyle(color: highlight, fontSize: width*0.06, )),),
                ),
                SizedBox(
                  height: height*0.01,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.03),

                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: model,
                    controller: modelName,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Model Name',
                      labelStyle: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.018,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.03),

                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: number,
                    controller: carNumber,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Car Number',
                      labelStyle: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellowAccent)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.018,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.03),

                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: color,
                    controller: carColor,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Color',
                      labelStyle: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.018,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.03),

                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: kms,
                    controller: kmsDriven,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Kilometers Driven',
                      labelStyle: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.02,
                ),

                SizedBox(
                  height: height*0.02,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: width*0.03),
                  child: Text("Car Capacity", style: GoogleFonts.ubuntu(textStyle: TextStyle(color: highlight, fontSize: width*0.06, )),),
                ),
                SizedBox(
                  height: height*0.01,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.03),

                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: nop,
                    controller: noOfPassengers,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'No. of passengers',
                      labelStyle: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.018,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.03),

                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: nol,
                    controller: noOfLuggage,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'No. of luggage',
                      labelStyle: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.02,
                ),

                SizedBox(
                  height: height*0.02,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: width*0.03),
                  child: Text("Payment Details", style: GoogleFonts.ubuntu(textStyle: TextStyle(color: highlight, fontSize: width*0.06, )),),
                ),
                SizedBox(
                  height: height*0.01,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.03),

                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: cpd,
                    controller: cost_per_day,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Cost per day',
                      labelStyle: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.018,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.03),

                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    focusNode: lf,
                    controller: late_fee,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Late Fee per Hour',
                      labelStyle: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellowAccent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.yellow)),
                    ),
                  ),
                ),

                SizedBox(
                  height: height*0.02,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: width*0.03),
                  child: Text("Car Photos", style: GoogleFonts.ubuntu(textStyle: TextStyle(color: highlight, fontSize: width*0.06, )),),
                ),
                SizedBox(
                  height: height*0.01,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.03),
                  child: GestureDetector(
                    onTap: () async{
                      final result = await FilePicker.platform.pickFiles();
                      if (result == null) {
                        return;
                      }
                      final file = result.files.first;
                      //openFile(file);
                      final path = file.path;
                      final filename = file.name;
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          barrierColor:
                          Colors.black.withOpacity(0.6),
                          builder: (BuildContext context) =>
                              Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        50.0)),
                                //this right here
                                child: Container(
                                  // height: height*0.5,
                                  width: width, //*0.8,
                                  //color: Color(0xFFF7FCFF),
                                  padding: EdgeInsets.only(
                                      bottom: height * 0.05),
                                  decoration: BoxDecoration(
                                      color:
                                      const Color(0xFFF7FCFF),
                                      borderRadius:
                                      BorderRadius.circular(
                                          50.0)),
                                  child: Column(
                                    mainAxisSize:
                                    MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets
                                              .symmetric(
                                              vertical:
                                              height *
                                                  0.03)),
                                      Image.asset(
                                        "assets/images/folder.png",
                                        scale: 2,
                                      ),
                                      Padding(
                                          padding: EdgeInsets
                                              .symmetric(
                                              vertical:
                                              height *
                                                  0.004)),
                                      Text(
                                        filename.toString(),
                                        style: TextStyle(
                                            color:
                                            Color(0xff1F1F1F),
                                            fontSize:
                                            width * 0.06,
                                            fontWeight:
                                            FontWeight.w500),
                                      ),
                                      Padding(
                                          padding: EdgeInsets
                                              .symmetric(
                                              vertical:
                                              height *
                                                  0.03)),
                                      Container(
                                        margin:
                                        EdgeInsets.symmetric(
                                            horizontal:
                                            width * 0.1),
                                        child: Text(
                                          "Are you sure you want to upload these photos?",
                                          style: TextStyle(
                                              color: Color(
                                                  0xFF0957DE),
                                              fontSize:
                                              width * 0.05,
                                              fontWeight:
                                              FontWeight
                                                  .w500),
                                          textAlign:
                                          TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets
                                              .symmetric(
                                              vertical:
                                              height *
                                                  0.04)),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceEvenly,
                                        children: [
                                          Container(
                                            width: width * 0.3,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                openFile(file);
                                              },
                                              child: Text(
                                                'View File',
                                                style: TextStyle(
                                                    fontSize:
                                                    width *
                                                        0.04),
                                              ),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty.all(Theme.of(context)
                                                      .colorScheme
                                                      .primary),
                                                  padding: MaterialStateProperty.all(
                                                      EdgeInsets.all(
                                                          height *
                                                              0.017)),
                                                  shape: MaterialStateProperty.all(
                                                      RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(
                                                              10))),
                                                  elevation:
                                                  MaterialStateProperty.all(
                                                      05)),
                                            ),
                                          ),
                                          Container(
                                            width: width * 0.3,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(
                                                    context);
                                              },
                                              child:  Text(
                                                'Upload ',
                                                style: TextStyle(
                                                    fontSize:
                                                    width *
                                                        0.04),
                                              ),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty.all(Theme.of(context)
                                                      .colorScheme
                                                      .primary),
                                                  padding: MaterialStateProperty.all(
                                                      EdgeInsets.all(
                                                          height *
                                                              0.017)),
                                                  shape: MaterialStateProperty.all(
                                                      RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(
                                                              10))),
                                                  elevation:
                                                  MaterialStateProperty.all(
                                                      05)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                          padding: EdgeInsets
                                              .symmetric(
                                              vertical:
                                              height *
                                                  0.006)),
                                      Container(
                                        width: width * 0.68,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(
                                                context);
                                          },
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                                fontSize:
                                                width * 0.04),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.red),
                                              padding: MaterialStateProperty.all(
                                                  EdgeInsets.all(
                                                      height *
                                                          0.017)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                              elevation:
                                              MaterialStateProperty.all(05)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                      );

                    },
                    child: Container(
                      width: width,
                      height: height*0.05,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: highlight, width: 2)
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Upload ",style: GoogleFonts.ubuntu(textStyle: TextStyle(color: Colors.white, fontSize: height*0.02, fontWeight: FontWeight.bold)),),
                            Icon(Icons.upload, color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.02,
                ),


                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.035),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(0)),

                    ),
                    child: Container(
                      height: height*0.05,
                      width: width,
                      decoration: BoxDecoration(
                          color: highlight,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                          child: Text("List Your Car", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: height*0.025),)),
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
