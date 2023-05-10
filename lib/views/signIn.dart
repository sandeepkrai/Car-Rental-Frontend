import 'package:dbs_project/Utils/customer.dart';
import 'package:dbs_project/Utils/lend.dart';
import 'package:dbs_project/Utils/rent.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:dbs_project/views/homescreen.dart';
import 'package:dbs_project/views/signUp.dart';
import 'package:flutter/material.dart';
import '../Constants/constantColors.dart';

Customer customer = Customer(
  firstName: 'firstName',
  middleName: 'middleName',
  lastName: 'lastName',
  street: 'street',
  city: 'city',
  stateProvince: 'stateProvince',
  country: 'country',
  postalCode: 'postalCode',
  drivingLicenseId: 'drivingLicenseId',
  email: 'email',
  phoneNumber: 'phoneNumber',
);

class signIN extends StatefulWidget {
  const signIN({Key? key}) : super(key: key);

  @override
  State<signIN> createState() => _signINState();
}

class _signINState extends State<signIN> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController username = TextEditingController();
    FocusNode uname = FocusNode();
    final TextEditingController password = TextEditingController();
    FocusNode pass = FocusNode();
    bool _passwordVisible = false;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                child: TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  focusNode: uname,
                  controller: username,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    labelText: 'Username',
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
                        borderSide: BorderSide(width: 2, color: Colors.yellow)),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                child: TextField(
                  obscureText: (_passwordVisible) ? false : false,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  focusNode: pass,
                  controller: password,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: background2,
                      ),
                    ),
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
                        borderSide: BorderSide(width: 2, color: Colors.yellow)),
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
                    //Navigator.pushReplacement(context, MaterialPageRoute<void>(builder: (context)=>homescreen()));
                    //fetchCustomerData();
                    print(await checkLogin(username.text, password.text));
                    if (await checkLogin(username.text, password.text) == 1) {
                      customer = await fetchCustomer(username.text);
                      fetchAvailableCars();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                              builder: (context) => homescreen(
                                    customer: customer,
                                  )));
                    }
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
                      "Sign In",
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
                      "Not an existing user?",
                      style: TextStyle(
                          color: Colors.white, fontSize: width * 0.04),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (context) => signUp()));
                        },
                        child: Text(
                          "Create an account",
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
    );
  }
}
