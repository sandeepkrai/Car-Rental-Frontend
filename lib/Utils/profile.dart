import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/views/signIn.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: background2,
                      borderRadius: BorderRadius.all(Radius.circular(360))),
                  child: Icon(
                    Icons.person,
                    size: height * 0.15,
                    color: highlight,
                  ),
                ),
              ),
              SizedBox(height: height * 0.05),
              Text(
                "Name",
                style: TextStyle(
                    fontSize: height * 0.031,
                    fontWeight: FontWeight.bold,
                    color: highlight),
              ),
              SizedBox(height: 0),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.01, horizontal: width * 0.02),
                decoration: BoxDecoration(
                    color: background2,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  customer.firstName +
                      " " +
                      customer.middleName +
                      " " +
                      customer.lastName,
                  style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: height * 0.014),
              Text(
                "Email",
                style: TextStyle(
                    fontSize: height * 0.031,
                    fontWeight: FontWeight.bold,
                    color: highlight),
              ),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.01, horizontal: width * 0.02),
                decoration: BoxDecoration(
                    color: background2,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  customer.email,
                  style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: height * 0.014),
              Text(
                "Phone Number",
                style: TextStyle(
                    fontSize: height * 0.031,
                    fontWeight: FontWeight.bold,
                    color: highlight),
              ),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.01, horizontal: width * 0.02),
                decoration: BoxDecoration(
                    color: background2,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  customer.phoneNumber,
                  style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: height * 0.014),
              Text(
                "Driving License Number",
                style: TextStyle(
                    fontSize: height * 0.031,
                    fontWeight: FontWeight.bold,
                    color: highlight),
              ),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.01, horizontal: width * 0.02),
                decoration: BoxDecoration(
                    color: background2,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  customer.drivingLicenseId,
                  style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: height * 0.014),
              Text(
                "Address",
                style: TextStyle(
                    fontSize: height * 0.031,
                    fontWeight: FontWeight.bold,
                    color: highlight),
              ),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.01, horizontal: width * 0.02),
                decoration: BoxDecoration(
                    color: background2,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  // " 51,Dobson Road\n Howrah- 711101\n West Bengal\n India",
                  customer.street +
                      "\n" +
                      customer.city +
                      "-" +
                      customer.postalCode +
                      "\n" +
                      customer.stateProvince +
                      "\n" +
                      customer.country,
                  style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
