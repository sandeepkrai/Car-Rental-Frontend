import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/car.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:flutter/material.dart';

class carPage extends StatefulWidget {
  carPage(
      {required this.car,
      required this.page_no,
      required this.coupon,
      required this.insuarance,
      Key? key})
      : super(key: key);

  final Car car;
  final int page_no;
  List<String> coupon = [];
  List<String> insuarance = [];

  @override
  State<carPage> createState() => _carPageState();
}

class _carPageState extends State<carPage> {
  String? couponCode;
  String? insuaranceCode;
  DateTime? _pickupDate;
  DateTime? _dropDate;
  String? _selectedPickupTime;
  String? _selectedDropTime;

  @override
  Widget build(BuildContext context) {
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
          String hour = result.hour.toString();
          String min = result.minute.toString();
          _selectedPickupTime = hour + ":" + min + ":00";
        });
      }
    }

    // We don't need to pass a context to the _show() function
    // You can safety use context as below

    Future<void> _showDropTimePicker() async {
      final TimeOfDay? result1 =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());
      if (result1 != null) {
        String hour = result1.hour.toString();
        String min = result1.minute.toString();
        setState(() {
          _selectedDropTime = hour + ":" + min + ":00";
        });
      }
    }

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    print(widget.coupon);
    print(widget.insuarance);
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
              height: height * 0.03,
            ),
            (widget.page_no == 0)
                ? Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.0, vertical: height * 0.01),
                    margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                    height: height * 0.15,
                    decoration: BoxDecoration(
                        color: background2,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.008,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
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
                                  "Select Coupon Code",
                                  style: TextStyle(
                                      color: highlight,
                                      fontSize: height * 0.02,
                                      fontWeight: FontWeight.bold),
                                ),
                                isExpanded: true,
                                value: couponCode,
                                onChanged: (value) {
                                  setState(() {
                                    couponCode = value;
                                  });
                                },
                                items: widget.coupon.map((value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(
                                      value,
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
                        ),
                        SizedBox(
                          height: height * 0.013,
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
                                "Select Insuarance Code",
                                style: TextStyle(
                                    color: highlight,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.bold),
                              ),
                              isExpanded: true,
                              value: insuaranceCode,
                              onChanged: (value) {
                                setState(() {
                                  insuaranceCode = value;
                                });
                              },
                              items: widget.insuarance.map((value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value,
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
                      ],
                    ),
                  )
                : Container(
                    height: 0,
                  ),
            SizedBox(
              height: height * 0.03,
            ),
            (widget.page_no == 0)
                ? Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.0, vertical: height * 0.01),
                    margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                    decoration: BoxDecoration(
                        color: background2,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.09,
                          width: width,
                          color: Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: height * 0.01,
                                horizontal: width * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: _pickupDatePicker,
                                  child: Container(
                                      height: height * 0.2,
                                      width: width * 0.35,
                                      decoration: BoxDecoration(
                                          color: background,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: (_pickupDate.toString() !=
                                                  "null")
                                              ? Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "From: ",
                                                      style: TextStyle(
                                                          color: text,
                                                          fontSize:
                                                              height * 0.0178,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      _pickupDate!.day
                                                              .toString() +
                                                          "/" +
                                                          _pickupDate!.month
                                                              .toString() +
                                                          "/" +
                                                          _pickupDate!.year
                                                              .toString(),
                                                      style: TextStyle(
                                                          color: text,
                                                          fontSize:
                                                              height * 0.0178,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )
                                                  ],
                                                )
                                              : Text("Pickup Date",
                                                  style: TextStyle(
                                                      color: text,
                                                      fontSize: height * 0.0178,
                                                      fontWeight:
                                                          FontWeight.w600)))),
                                ),
                                SizedBox(
                                  width: width * 0.03,
                                ),
                                GestureDetector(
                                  onTap: _dropDatePicker,
                                  child: Container(
                                      height: height * 0.2,
                                      width: width * 0.35,
                                      decoration: BoxDecoration(
                                          color: background,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: (_dropDate.toString() !=
                                                  "null")
                                              ? Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "To: ",
                                                      style: TextStyle(
                                                          color: text,
                                                          fontSize:
                                                              height * 0.0178,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      _dropDate!.day
                                                              .toString() +
                                                          "/" +
                                                          _dropDate!.month
                                                              .toString() +
                                                          "/" +
                                                          _dropDate!.year
                                                              .toString(),
                                                      style: TextStyle(
                                                          color: text,
                                                          fontSize:
                                                              height * 0.0178,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )
                                                  ],
                                                )
                                              : Text("Drop Date",
                                                  style: TextStyle(
                                                      color: text,
                                                      fontSize: height * 0.0178,
                                                      fontWeight:
                                                          FontWeight.w600)))),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.09,
                          width: width,
                          color: Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: height * 0.01,
                                horizontal: width * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: _showPickupTimePicker,
                                  child: Container(
                                      height: height * 0.2,
                                      width: width * 0.35,
                                      decoration: BoxDecoration(
                                          color: background,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: (_selectedPickupTime != null)
                                              ? Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Pickup: ",
                                                      style: TextStyle(
                                                          color: text,
                                                          fontSize:
                                                              height * 0.0178,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      _selectedPickupTime!,
                                                      style: TextStyle(
                                                          color: text,
                                                          fontSize:
                                                              height * 0.0178,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )
                                                  ],
                                                )
                                              : Text("Pickup Time",
                                                  style: TextStyle(
                                                      color: text,
                                                      fontSize: height * 0.0178,
                                                      fontWeight:
                                                          FontWeight.w600)))),
                                ),
                                SizedBox(
                                  width: width * 0.03,
                                ),
                                GestureDetector(
                                  onTap: _showDropTimePicker,
                                  child: Container(
                                      height: height * 0.2,
                                      width: width * 0.35,
                                      decoration: BoxDecoration(
                                          color: background,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: (_selectedDropTime != null)
                                              ? Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Drop: ",
                                                      style: TextStyle(
                                                          color: text,
                                                          fontSize:
                                                              height * 0.0178,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      _selectedDropTime!,
                                                      style: TextStyle(
                                                          color: text,
                                                          fontSize:
                                                              height * 0.0178,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )
                                                  ],
                                                )
                                              : Text("Drop Time",
                                                  style: TextStyle(
                                                      color: text,
                                                      fontSize: height * 0.0178,
                                                      fontWeight:
                                                          FontWeight.w600)))),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.07),
              child: SizedBox(
                width: width,
                child: ElevatedButton(
                  onPressed: (widget.page_no == 0)
                      ? () async {
                          String drop = _dropDate.toString().substring(0, 10) +
                              " " +
                              _selectedDropTime!;
                          String pickup =
                              _pickupDate.toString().substring(0, 10) +
                                  " " +
                                  _selectedPickupTime!;

                          bookCar(emailId, drop, pickup, car.car_number,
                              insuaranceCode!, couponCode!);
                          Navigator.pop(context);
                        }
                      : () {},
                  child: Text(
                    (widget.page_no == 0) ? "BOOK" : "DELETE VEHICLE",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.0278,
                        fontWeight: FontWeight.bold),
                  ),
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

Dialog showCustomDialog(BuildContext c2) {
  var height = MediaQuery.of(c2).size.height;
  var width = MediaQuery.of(c2).size.width;
  TextEditingController coupon = TextEditingController();
  FocusNode c = FocusNode();
  TextEditingController insuarance = TextEditingController();
  FocusNode i = FocusNode();

  return Dialog(
    elevation: 10,
    backgroundColor: background,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    child: Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.035),
      height: height * 0.3,
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
                  style: TextStyle(fontSize: height * 0.03, color: highlight),
                ),
                Text(
                  "₹2000",
                  style:
                      TextStyle(color: Colors.white, fontSize: height * 0.025),
                )
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount: ",
                  style: TextStyle(fontSize: height * 0.03, color: highlight),
                ),
                Text(
                  "₹300",
                  style:
                      TextStyle(color: Colors.white, fontSize: height * 0.025),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Net Amount: ",
                  style: TextStyle(fontSize: height * 0.03, color: highlight),
                ),
                Text(
                  "₹1700",
                  style:
                      TextStyle(color: Colors.white, fontSize: height * 0.025),
                )
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            SizedBox(
              width: width,
              height: height * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(c2);
                },
                child: Text(
                  "Pay Now",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.02),
                ),
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
