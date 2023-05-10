import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/car.dart';
import 'package:dbs_project/Utils/car_grid.dart';
import 'package:dbs_project/Utils/customer.dart';
import 'package:dbs_project/Utils/lend.dart';
import 'package:dbs_project/Utils/profile.dart';
import 'package:dbs_project/Utils/rent.dart';
import 'package:dbs_project/views/addCar.dart';
import 'package:dbs_project/views/carPage.dart';
import 'package:dbs_project/views/signIn.dart';
import 'package:dbs_project/views/upcomingBookings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class homescreen extends StatefulWidget {
  const homescreen({Key? key, required this.customer}) : super(key: key);
  final Customer customer;
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  int current_page = 0;
  List<Widget> page = [rent(), lend(), profile()];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff222831),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Color(0xff393E46),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            decoration: BoxDecoration(
                color: background, borderRadius: BorderRadius.circular(40)),
            child: GNav(
                onTabChange: (index) {
                  
                  setState(() {
                    current_page = index;
                  });

                },
                color: Color(0xff00ADB5),
                activeColor: Color(0xffEEEEEE),
                tabBackgroundColor: Color(0xff3d4654),
                gap: 10,
                padding: EdgeInsets.all(10),
                tabs: [
                  GButton(
                    icon: Icons.car_rental_outlined,
                    text: 'Rent',
                  ),
                  GButton(
                    icon: Icons.money,
                    text: 'Lend',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ]),
          ),
        ),
        body: page[current_page]);
  }
}




// class _profileState extends State<profile> {
//   @override
//   Widget build(BuildContext context) {
//     var height= MediaQuery.of(context).size.height;
//     var width= MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(

//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Center(
//                 child: Container(
//                   padding: EdgeInsets.all(20),
                  
//                   decoration: BoxDecoration(
//                     color: background2,
//                     borderRadius: BorderRadius.all(Radius.circular(360))
//                   ),
//                   child: Icon(
//                     Icons.person, size: height*0.15,
//                     color: highlight,
//                   ),
//                 ),
//               ),
//               SizedBox(height: height*0.05),
//               Text(
//                 "Name",
//                 style: TextStyle(fontSize: height*0.031, fontWeight: FontWeight.bold, color: highlight),
//               ),
//               SizedBox(height: 0),
//               Container(
//                 width: width,
//                 padding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.02),
//                 decoration: BoxDecoration(
//                   color: background2,
//                   borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Text(
//                   "Nirvana Baid",
//                   style: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: height*0.014),
//               Text(
//                 "Email",
//                 style: TextStyle(fontSize: height*0.031, fontWeight: FontWeight.bold, color: highlight),
//               ),
//               Container(
//                 width: width,
//                 padding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.02),
//                 decoration: BoxDecoration(
//                     color: background2,
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Text(
//                   "baidnirvana@gmail.com",
//                   style: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: height*0.014),
//               Text(
//                 "Phone Number",
//                 style: TextStyle(fontSize:height*0.031, fontWeight: FontWeight.bold, color: highlight),
//               ),
//               Container(
//                 width: width,
//                 padding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.02),
//                 decoration: BoxDecoration(
//                     color: background2,
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Text(
//                   "+91 9038329666",
//                   style: TextStyle(fontSize:height*0.02 , fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: height*0.014),
//               Text(
//                 "Driving License Number",
//                 style: TextStyle(fontSize: height*0.031, fontWeight: FontWeight.bold, color: highlight),
//               ),
//               Container(
//                 width: width,
//                 padding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.02),
//                 decoration: BoxDecoration(
//                     color: background2,
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Text(
//                   "XXXXXXXXXXXXXXXXXXXX",
//                   style: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: height*0.014),
//               Text(
//                 "Address",
//                 style: TextStyle(fontSize: height*0.031, fontWeight: FontWeight.bold, color: highlight),
//               ),
//               Container(
//                 width: width,
//                 padding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.02),
//                 decoration: BoxDecoration(
//                     color: background2,
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Text(
//                   " 51,Dobson Road\n Howrah- 711101\n West Bengal\n India",
//                   style: TextStyle(fontSize: height*0.02, fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: height*0.024),
//               SizedBox(
//                 width: width,
//                 height: height*0.055,
//                 child: ElevatedButton(
//                   onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => upcomingBookings()));},
//                   child: Text("Upcoming Bookings", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height*0.024),),
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStatePropertyAll(background2),

//                   ),
//                 ),
//               ),
//               SizedBox(height: height*0.024),
//               SizedBox(
//                 width: width,
//                 height: height*0.055,
//                 child: ElevatedButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signIN()));}, child: Text("LOG OUT", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontSize: height*0.024),),
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStatePropertyAll(highlight),

//                   ),
//                 ),
//               ),
//               SizedBox(height: height*0.024),
//               SizedBox(
//                 width: width,
//                 height: height*0.055,
//                 child: ElevatedButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signIN()));}, child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.warning_rounded, color: Colors.white, size: height*0.032,) ,
//                     SizedBox(width: width*0.04,),
//                     Text("DELETE ACCOUNT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: height*0.024),),
//                   ],
//                 ),
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStatePropertyAll(Colors.red),

//                   ),
//                 ),
//               ),
//               SizedBox(height: 16.0),

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
