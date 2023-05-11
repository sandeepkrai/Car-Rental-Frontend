import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class upcomingBookings extends StatefulWidget {
  const upcomingBookings({Key? key, required this.bookings}) : super(key: key);
  final List<Booking> bookings;
  @override
  State<upcomingBookings> createState() => _upcomingBookingsState();
}

class _upcomingBookingsState extends State<upcomingBookings> {
  int i = 0;
  void change_state(int n) {
    setState(() {
      i = n;
    });
  }

  Future<void> showTemrsDialog(BuildContext context, String carNumber) async {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    bool? check1 = false;
    bool? check2 = false;
    bool? check3 = false;
    //List<String> rating=["1","2","3","4","5"];
    List<int> rating = [1, 2, 3, 4, 5];
    String? a;
    int? rate;

    return await showDialog(
        context: context,
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.6),
        builder: (BuildContext context) =>
            StatefulBuilder(builder: (context, setState) {
              return Dialog(
                elevation: 10,
                backgroundColor: background,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.035),
                  height: height * 0.24,
                  child: Container(
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Please enter rating out of 5",
                          style: TextStyle(
                              color: highlight,
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: width * 0.03,
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: highlight)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              dropdownColor: background,
                              hint: Text(
                                "Select Rating",
                                style: TextStyle(
                                    color: highlight,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.bold),
                              ),
                              isExpanded: true,
                              value: rate,
                              onChanged: (value) {
                                setState(() {
                                  rate = value;
                                });
                              },
                              items: rating.map((value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: height * 0.02),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: ElevatedButton(
                            onPressed: () async {
                              var i =
                                  await giveReview(carNumber, rate.toString());
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.02),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(highlight),
                            ),
                          ),
                        )
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     IconButton(onPressed: (){}, icon: Icon(Icons.star, size: height*0.05,color:  (i >= 1)? highlight:background2,,)),
                        //     IconButton(onPressed: (){}, icon: Icon(Icons.star, size: height*0.05,color:  (i >= 2)? highlight:background2,)),
                        //     IconButton(onPressed: (){}, icon: Icon(Icons.star, size: height*0.05,color:  (i >= 3)? highlight:background2,)),
                        //     IconButton(onPressed: (){}, icon: Icon(Icons.star, size: height*0.05,color:  (i >= 4)? highlight:background2,)),
                        //     IconButton(onPressed: (){}, icon: Icon(Icons.star, size: height*0.05,color:  (i >= 5)? highlight:background2,)),
                        //
                        //   ],
                      ],
                    ),
                  ),
                ),
              );
            }));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background2,
        title: Text(
          "Bookings",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: background,
      body: ListView.builder(
          itemCount: widget.bookings.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(
                  vertical: height * 0.01, horizontal: width * 0.03),
              decoration: BoxDecoration(
                  color: background2,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ListTile(
                onTap: () {
                  //showDialog(context: context, builder: (context) => showCustomDialog(context, 0) );
                  showTemrsDialog(context, widget.bookings[index].car_number);
                },
                leading: const Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                title: Text(
                  widget.bookings[index].name +
                      " (" +
                      widget.bookings[index].car_number +
                      ")",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.02),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "₹" + widget.bookings[index].cost.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.0155),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Text(
                        DateFormat.MEd()
                            .format(widget.bookings[index].startDate),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.0155)),
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
  final DateTime startDate;

  Booking(
      {required this.name,
      required this.cost,
      required this.car_number,
      required this.startDate});
}

Dialog showCustomDialog(BuildContext c2, int i) {
  var height = MediaQuery.of(c2).size.height;
  var width = MediaQuery.of(c2).size.width;

  return Dialog(
    elevation: 10,
    backgroundColor: background,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    child: Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.035),
      height: height * 0.2,
      width: width,
      child: Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Please enter rating!!",
              style: TextStyle(
                  color: highlight,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      i = 1;
                    },
                    icon: Icon(
                      Icons.star,
                      size: height * 0.05,
                      color: (i >= 1) ? highlight : background2,
                    )),
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: c2,
                          builder: (context) => showCustomDialog(context, 1));
                    },
                    icon: Icon(
                      Icons.star,
                      size: height * 0.05,
                      color: (i >= 2) ? highlight : background2,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      size: height * 0.05,
                      color: (i >= 3) ? highlight : background2,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      size: height * 0.05,
                      color: (i >= 4) ? highlight : background2,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      size: height * 0.05,
                      color: (i >= 5) ? highlight : background2,
                    )),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Future<void> showTemrsDialog(BuildContext context) async {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  int i = 0;

  return await showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.6),
      builder: (BuildContext context) =>
          StatefulBuilder(builder: (context, setState) {
            return Dialog(
              elevation: 10,
              backgroundColor: background,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.035),
                height: height * 0.2,
                width: width,
                child: Container(
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Please enter rating!!",
                        style: TextStyle(
                            color: highlight,
                            fontSize: height * 0.025,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                size: height * 0.05,
                                color: (i >= 1) ? highlight : background2,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                size: height * 0.05,
                                color: (i >= 2) ? highlight : background2,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                size: height * 0.05,
                                color: (i >= 3) ? highlight : background2,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                size: height * 0.05,
                                color: (i >= 4) ? highlight : background2,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                size: height * 0.05,
                                color: (i >= 5) ? highlight : background2,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }));
}
