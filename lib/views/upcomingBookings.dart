import 'package:dbs_project/Constants/constantColors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class upcomingBookings extends StatefulWidget {
  const upcomingBookings({Key? key}) : super(key: key);

  @override
  State<upcomingBookings> createState() => _upcomingBookingsState();
}

class _upcomingBookingsState extends State<upcomingBookings> {
  @override
  Widget build(BuildContext context) {
    List<Booking> bookings= [Booking(name: "Swift", cost: 1000,  car_number: "WB 01 AB 1924", startDate: DateTime.now()),
      Booking(name: "Ciaz", cost: 1300,  car_number: "WB 01 AB 1924", startDate: DateTime.now()),
      Booking(name: "Amaze", cost: 1200,  car_number: "WB 01 AB 1924", startDate: DateTime.now())
    ];
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: background2,
        title: Text("Upcoming Bookings", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      backgroundColor: background,
      body: ListView.builder(
          itemCount: bookings.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.03),
              decoration: BoxDecoration(
                color: background2,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: ListTile(

                  leading: const Icon(Icons.list, color: Colors.white,),
                  trailing: GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(height*0.009),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.delete, color: Colors.white,),
                    ),
                  ),
                  title: Text(bookings[index].name+" ("+bookings[index].car_number+")", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height*0.02),),
                  subtitle: Row(
                    children: [
                      Text("₹"+bookings[index].cost.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: height*0.0155),),
                      SizedBox(
                        width: width*0.04,
                      ),
                      Text(DateFormat.MEd().format(bookings[index].startDate), style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: height*0.0155)),

                    ],
                  ),
              ),
            );
          }),
    );
  }
}


class Booking {
  final String name;

  final int cost;

  final String car_number;
  final DateTime startDate ;

  Booking({required this.name,   required this.cost, required this.car_number, required this.startDate });
}