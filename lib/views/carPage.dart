import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/car.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

import 'homescreen.dart';

class carPage extends StatefulWidget {
  const carPage({required this.car, required this.page_no, Key? key})
      : super(key: key);

  final Car car;
  final int page_no;

  @override
  State<carPage> createState() => _carPageState();
}

class _carPageState extends State<carPage> {

  String? couponCode;
  String? insuaranceCode;
  List<String> coupon=["Summer10", "Winter20"];
  List<String> insuarance=["SafeLife", "TensionFree100"];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Car car = widget.car;
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
        backgroundColor: background2,
      ),
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Container(
                color: background2,
                width: width * 0.9,
                child: Image.network(
                  car.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              car.name,
              style: TextStyle(
                  color: text,
                  fontSize: height * 0.0338,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              car.car_number,
              style: TextStyle(color: highlight, fontSize: height * 0.024),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.0),
              margin: EdgeInsets.symmetric(horizontal: width * 0.1),
              height: height * 0.13,
              decoration: BoxDecoration(
                  color: background2, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Price:",
                        style: TextStyle(
                            color: highlight, fontSize: height * 0.03),
                      ),
                      Text(
                        car.cost.toString(),
                        style: TextStyle(color: text, fontSize: height * 0.028),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Late Fee:",
                        style: TextStyle(
                            color: highlight, fontSize: height * 0.03),
                      ),
                      Text(
                        car.late_fee.toString(),
                        style: TextStyle(color: text, fontSize: height * 0.028),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.0),
              margin: EdgeInsets.symmetric(horizontal: width * 0.1),
              height: height * 0.13,
              decoration: BoxDecoration(
                  color: background2, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "No. of Passengers:",
                        style: TextStyle(
                            color: highlight, fontSize: height * 0.03),
                      ),
                      Text(
                        car.cost.toString(),
                        style: TextStyle(color: text, fontSize: height * 0.028),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "No. of luggages:",
                        style: TextStyle(
                          color: highlight,
                          fontSize: height * 0.03,
                        ),
                      ),
                      Text(
                        car.late_fee.toString(),
                        style: TextStyle(color: text, fontSize: height * 0.028),
                      )
                    ],
                  ),
                ],
              ),
            ),
              SizedBox(
                height: height*0.03,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.0, vertical: height*0.01),
                margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                height: height * 0.15,
                decoration: BoxDecoration(
                    color: background2, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: height*0.008,
                  ),
                  Container(

                    margin: EdgeInsets.symmetric(horizontal: width * 0.03, ),
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: highlight)
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        dropdownColor: background,
                        hint: Text("Select Coupon Code", style: TextStyle(color: highlight, fontSize: height*0.02, fontWeight: FontWeight.bold),),
                        isExpanded: true,
                        value: couponCode,
                        onChanged: (value) {
                          setState(() {
                            couponCode = value;
                          });
                        },
                        items: coupon.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: height*0.02),),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height*0.013,
                  ),
                  Container(

                    margin: EdgeInsets.symmetric(horizontal: width * 0.03, ),
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: highlight)
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        dropdownColor: background,
                        hint: Text("Select Insuarance Code", style: TextStyle(color: highlight, fontSize: height*0.02, fontWeight: FontWeight.bold),),
                        isExpanded: true,
                        value: insuaranceCode,
                        onChanged: (value) {
                          setState(() {
                            insuaranceCode = value;
                          });
                        },
                        items: insuarance.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: height*0.02),),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              ),
            SizedBox(
              height: height*0.03,
            ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*0.07),
                child: SizedBox(
                  width: width,
                  child: ElevatedButton(
                    onPressed: (widget.page_no == 0)?
                        (){
                        showDialog(context: context, builder: (context) => showCustomDialog(context) );
                        }:
                        (){},
                    child: Text((widget.page_no == 0)? "BOOK": "DELETE VEHICLE", style: TextStyle(color: Colors.black, fontSize: height*0.0278, fontWeight: FontWeight.bold),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(highlight),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: height * 0.013))),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}

Dialog showCustomDialog(BuildContext c2)
{
  var height= MediaQuery.of(c2).size.height;
  var width= MediaQuery.of(c2).size.width;
  TextEditingController coupon= TextEditingController();
  FocusNode c=FocusNode();
  TextEditingController insuarance= TextEditingController();
  FocusNode i=FocusNode();

  return Dialog(
    elevation: 10,
    backgroundColor: background,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.05, vertical: height*0.035),
      height: height*0.3,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Payment: ",
                  style: TextStyle(fontSize: height*0.03, color: highlight),
                ),
                Text("₹2000", style: TextStyle(color: Colors.white, fontSize: height*0.025),)
              ],
            ),
            SizedBox(height: height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount: ",
                  style: TextStyle(fontSize: height*0.03, color: highlight),
                ),
                Text("₹300", style: TextStyle(color: Colors.white, fontSize: height*0.025),)
              ],
            ),
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Net Amount: ",
                  style: TextStyle(fontSize: height*0.03, color: highlight),
                ),
                Text("₹1700", style: TextStyle(color: Colors.white, fontSize: height*0.025),)
              ],
            ),
            SizedBox(height: height*0.04,),


          SizedBox(
            width: width,
            height: height*0.05,
            child: ElevatedButton(onPressed: (){
              Navigator.pop(c2);
            } ,
                child: Text("Pay Now", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: height*0.02),),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(highlight),

              ),
            ),
          )

          ],
        ),
      ),
    ),
  );

}
