import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/car.dart';
import 'package:dbs_project/Utils/car_grid.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:dbs_project/views/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<Car> _availabeCars = [];
void fetchAvailableCars() async {
  _availabeCars.clear();
  _availabeCars.addAll(await fetchCars());
}

class rent extends StatefulWidget {
  rent({Key? key}) : super(key: key);

  @override
  State<rent> createState() => _rentState();
}

class _rentState extends State<rent> {
  @override
  DateTime? _pickupDate;

  DateTime? _dropDate;
  String? _selectedPickupTime;
  String? _selectedDropTime;
  int n = 2;

  TextEditingController city = TextEditingController();

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Future.delayed(Duration(seconds: 2), () async {
      setState(() {});
    });

    return SingleChildScrollView(
      child: Container(
        color: background,
        child: SafeArea(
          child: Container(
            width: width,
            //height: height,
            color: background,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Available Cars!!",
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                color: text,
                                fontSize: height * 0.0177,
                                fontWeight: FontWeight.w500)),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                n = 2;
                              });
                            },
                            icon: Icon(
                              Icons.grid_view,
                              color: text,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  n = 3;
                                });
                              },
                              icon: Icon(
                                Icons.grid_on_outlined,
                                color: text,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                    child: CarGridView(
                  page_no: 0,
                  n: n,
                  cars: _availabeCars,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
