import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/Utils/car.dart';
import 'package:dbs_project/controller/functions.dart';
import 'package:dbs_project/views/carPage.dart';
import 'package:dbs_project/views/homescreen.dart';
import 'package:flutter/material.dart';

List<String> coupon = [];
List<String> insuarance = [];

Future<void> getInsuranceCoupon() async {
  var data1 = await getCoupons();
  var data2 = await getInsurance();
  coupon.clear();
  insuarance.clear();
  for (var i in data1) {
    coupon.add(i['discount_code'].toString());
  }
  for (var i in data2) {
    insuarance.add(i['name'].toString());
  }
}

class CarGridView extends StatelessWidget {
  CarGridView(
      {Key? key, required this.n, required this.cars, required this.page_no})
      : super(key: key);
  final int n;
  final int page_no;
  final List<Car> cars;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      itemCount: cars.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: n,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, index) {
        return GestureDetector(
          onTap: () async {
            await getInsuranceCoupon();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => carPage(
                          insuarance: insuarance,
                          coupon: coupon,
                          car: cars[index],
                          page_no: page_no,
                        )));
          },
          child: Container(
            color: background2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                color: background2,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        cars[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      cars[index].name,
                      style: TextStyle(
                        color: text,
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      cars[index].details,
                      style: TextStyle(
                        fontSize: height * 0.015,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
