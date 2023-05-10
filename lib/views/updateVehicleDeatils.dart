import 'package:dbs_project/Constants/constantColors.dart';
import 'package:flutter/material.dart';

class updateVehicleDetails extends StatefulWidget {
  const updateVehicleDetails({Key? key}) : super(key: key);

  @override
  State<updateVehicleDetails> createState() => _updateVehicleDetailsState();
}

class _updateVehicleDetailsState extends State<updateVehicleDetails> {
  @override
  TextEditingController carNumber= TextEditingController();
  FocusNode n=FocusNode();
  TextEditingController price= TextEditingController();
  FocusNode p=FocusNode();
  TextEditingController late_fee= TextEditingController();
  FocusNode lf=FocusNode();
  TextEditingController no_of_passengers= TextEditingController();
  FocusNode nop=FocusNode();
  TextEditingController no_of_luggage= TextEditingController();
  FocusNode nol=FocusNode();
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(title: Text("Update Details"), backgroundColor: background2,),
      body: Column(
        children: [
          SizedBox(
            height: height*0.03,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.03),

            child: TextField(
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              focusNode: n,
              controller: carNumber,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                labelText: 'Car Number',
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
              focusNode: p,
              controller: price,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                labelText: 'Price',
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
                labelText: 'Late Fee',
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
              focusNode: nop,
              controller: no_of_passengers,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                labelText: 'Number of Passengers',
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
              controller: no_of_luggage,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                labelText: 'Number of Passengers',
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
            padding: EdgeInsets.symmetric(horizontal: width*0.03),
            child: SizedBox(
              width: width,
              child: ElevatedButton(onPressed: (){}, child: Text("UPDATE", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: height*0.025),),
              style: ButtonStyle(
                padding:MaterialStatePropertyAll( EdgeInsets.all(10)),
                backgroundColor: MaterialStatePropertyAll(highlight)

              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


