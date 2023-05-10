import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/car.dart';
import 'package:dbs_project/Utils/car_grid.dart';
import 'package:dbs_project/views/addCar.dart';
import 'package:dbs_project/views/homescreen.dart';
import 'package:flutter/material.dart';

class lend extends StatefulWidget {
  const lend({Key? key}) : super(key: key);

  @override
  State<lend> createState() => _lendState();
}

class _lendState extends State<lend> {
  final List<Car> _cars = [
    
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
              child: SizedBox(
                  child: CarGridView(
            n: 2,
            cars: _cars,
          ))),
          Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => addCar()));
                },
                label: Text("Add car"),
                icon: Icon(Icons.add),
                backgroundColor: background2,
                hoverColor: Colors.yellowAccent,
              ))
        ],
      ),
    );
  }
}
