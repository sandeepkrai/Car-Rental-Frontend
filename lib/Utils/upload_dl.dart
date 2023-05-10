import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:dbs_project/views/homescreen.dart';
import 'package:dbs_project/views/signIn.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file/open_file.dart';

Future<dynamic> UploadDl(BuildContext context, double width, double height,
    String filename, void openFile(PlatformFile file), PlatformFile file) {
  return showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.6),
      builder: (BuildContext context) => Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            //this right here
            child: Container(
              // height: height*0.5,
              width: width, //*0.8,
              //color: Color(0xFFF7FCFF),
              padding: EdgeInsets.only(bottom: height * 0.05),
              decoration: BoxDecoration(
                  color: const Color(0xFFF7FCFF),
                  borderRadius: BorderRadius.circular(50.0)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.03)),
                  Image.asset(
                    "assets/images/folder.png",
                    scale: 2,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.004)),
                  Text(
                    filename.toString(),
                    style: TextStyle(
                        color: Color(0xff1F1F1F),
                        fontSize: width * 0.06,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.03)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                    child: Text(
                      "Are you sure you want to upload this file?",
                      style: TextStyle(
                          color: Color(0xFF0957DE),
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.04)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: width * 0.3,
                        child: ElevatedButton(
                          onPressed: () {
                            openFile(file);
                          },
                          child: Text(
                            'View File',
                            style: TextStyle(fontSize: width * 0.04),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.primary),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(height * 0.017)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              elevation: MaterialStateProperty.all(05)),
                        ),
                      ),
                      Container(
                        width: width * 0.3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Upload ',
                            style: TextStyle(fontSize: width * 0.04),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.primary),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(height * 0.017)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              elevation: MaterialStateProperty.all(05)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.006)),
                  Container(
                    width: width * 0.68,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.all(height * 0.017)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          elevation: MaterialStateProperty.all(05)),
                    ),
                  ),
                ],
              ),
            ),
          ));
}
