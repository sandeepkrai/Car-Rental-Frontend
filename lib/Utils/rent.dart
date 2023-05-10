import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/car.dart';
import 'package:dbs_project/Utils/car_grid.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:dbs_project/views/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class rent extends StatefulWidget {
  rent({Key? key}) : super(key: key);

  @override
  State<rent> createState() => _rentState();
}

class _rentState extends State<rent> {
  final List<Car> _availabeCars = [];

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

    void fetchAvailableCars() async {
      _availabeCars.clear();
      _availabeCars.addAll(await fetchCars());
      setState(() {});
    }

    void _pickupDatePicker() {
      showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(DateTime.now().year + 2))
          .then((value) {
        setState(() {
          _pickupDate = value;
          print(_pickupDate);
        });
      });
    }

    void _dropDatePicker() {
      showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(DateTime.now().year + 2))
          .then((value) {
        setState(() {
          _dropDate = value;
        });
      });
    }

    Future<void> _showPickupTimePicker() async {
      final TimeOfDay? result =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());
      if (result != null) {
        setState(() {
          _selectedPickupTime = result.format(context);
        });
      }
    }

    // We don't need to pass a context to the _show() function
    // You can safety use context as below
    Future<void> _showDropTimePicker() async {
      final TimeOfDay? result1 =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());
      if (result1 != null) {
        setState(() {
          _selectedDropTime = result1.format(context);
        });
      }
    }

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
