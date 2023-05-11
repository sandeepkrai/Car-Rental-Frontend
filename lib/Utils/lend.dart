import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/car.dart';
import 'package:dbs_project/Utils/car_grid.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:dbs_project/views/addCar.dart';
import 'package:dbs_project/views/homescreen.dart';
import 'package:flutter/material.dart';

final List<Car> _cars = [];
void getCars() async {
  var data = await getCustomerCars();
  var x = data[0];
  _cars.clear();
  for (var i in x) {
    Car car = Car(
        name: i['car_number'].toString(),
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgqTGaCcUDDUmNl8GYXIS9vRVuR_b0KNiwsQ&usqp=CAU',
        details: i['availability_car_flag'].toString(),
        car_number: i['car_number'].toString(),
        cost: i['cost_per_day'].toString(),
        late_fee: i['late_fee_per_hour'].toString());

    _cars.add(car);
  }
}

class lend extends StatefulWidget {
  const lend({Key? key}) : super(key: key);

  @override
  State<lend> createState() => _lendState();
}

class _lendState extends State<lend> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    getCars();
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => addCar()));
        },
        label: Text("Add car"),
        icon: Icon(Icons.add),
        backgroundColor: background2,
        hoverColor: Colors.yellowAccent,
      ),
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
            child: SizedBox(
                child: CarGridView(
          page_no: 1,
          n: 2,
          cars: _cars,
        ))),
      ),
    );
  }
}
