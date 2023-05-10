import 'dart:convert';
import 'package:dbs_project/Utils/car.dart';
import 'package:dbs_project/Utils/customer.dart';
import 'package:dbs_project/Utils/discount.dart';
import 'package:http/http.dart' as http;

void fetchCustomerData() async {
  final response =
      await http.get(Uri.parse('http://192.168.56.1:8000/viewTables/customer'));

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    print(jsonData);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

Future<int> checkLogin(String email, String password) async {
  // Define the url of the api
  var url = Uri.parse(
      'http://192.168.56.1:8000/viewTables/login?email=use@example.com&password=password1');
  // Define the query parameters
  var params = {
    'email': email,
    'password': password,
  };
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  print(fullUrl);
  // List<Map<String, dynamic>> rows = data.map((e) => e.key).toList();
  // int success = rows[0]['@success'];
  return data[0]['@success'];
}

Future<int> signup(
    String firstName,
    String middleName,
    String lastName,
    String street,
    String city,
    String stateProvince,
    String country,
    String postalCode,
    String drivingLicenseId,
    String email,
    String password) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/signup');
  // Define the query parameters
  var params = {
    'firstName': firstName,
    'middleName': middleName,
    'lastName': lastName,
    'street': street,
    'city': city,
    'stateProvince': stateProvince,
    'country': country,
    'postalCode': postalCode,
    'drivingLicenseId': drivingLicenseId,
    'email': email,
    'password': password,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<List<Car>> fetchCars() async {
  final response = await http
      .get(Uri.parse('http://192.168.56.1:8000/viewTables/availableCars'));

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    List<Car> cars = [];
    //print(data);
    for (var i = 0; i < data[0].length; i++) {
      cars.add(Car(
        name: data[0][i]['model_id'].toString(),
        imageUrl:
            'https://images.unsplash.com/photo-1519681393784-d120267933ba',
        details:
            'Number of persons: ${data[0][i]['number_of_persons']}\nCost per day: ${data[0][i]['cost_per_day']}',
        car_number: data[0][i]['car_number'].toString(),
        cost: data[0][i]['cost_per_day'].toString(),
        late_fee: '12',
      ));
    }
    print(cars.length);
    return cars;
  } else {
    throw Exception('Failed to load cars');
  }
}

Future<Customer> fetchCustomer(String email) async {
  final response = await http.get(
      Uri.parse('http://192.168.56.1:8000/viewTables/customer?email=$email'));
  Customer customer = Customer(
      firstName: 'firstName',
      middleName: 'middleName',
      lastName: 'lastName',
      street: 'street',
      city: 'city',
      stateProvince: 'stateProvince',
      country: 'country',
      postalCode: 'postalCode',
      drivingLicenseId: 'drivingLicenseId',
      email: 'email',
      phoneNumber: 'phoneNumber',
      );
  //print(response.body);
  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    print(data[0]);
    // data[0].map((e) => customer = Customer.fromJson(e));
    customer = Customer(
      firstName: data[0]['first_name'],
      middleName: data[0]['middle_name'],
      lastName: data[0]['last_name'],
      street: data[0]['street'],
      city: data[0]['city'],
      stateProvince: data[0]['state_province'],
      country: data[0]['country'],
      postalCode: data[0]['postal_code'],
      drivingLicenseId: data[0]['driving_license_id'],
      email: data[0]['email'],
      phoneNumber: data[0]['phone_number'],
    );
    print(customer.firstName);
    return customer;
  } else {
    throw Exception('Failed to load customer');
  }
}

// Get available discounts
Future<List<Discount>> fetchDiscounts() async {
  final response = await http
      .get(Uri.parse('http://'));
  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    List<Discount> discounts = [];
    for (var i = 0; i < data[0].length; i++) {
      discounts.add(Discount(
        discount_code: data[0][i]['discount_id'].toString(),
        discount_amount: data[0][i]['discount_amount'],
        dicount_name: data[0][i]['discount_name'],
        expiry_date: data[0][i]['expiry_date'], 
      ));
    }
    print(discounts.length);
    return discounts;
  } else {
    throw Exception('Failed to load discounts');
  }
}

Future<int> rentCar(String email, String carNumber, String startDate, String endDate) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars');
  // Define the query parameters
  var params = {
    'email': email,
    'carNumber': carNumber,
    'startDate': startDate,
    'endDate': endDate,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<int> returnCar(String email, String carNumber, String startDate, String endDate) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars'); 
  // Define the query parameters
  var params = {
    'email': email,
    'carNumber': carNumber,
    'startDate': startDate,
    'endDate': endDate,
  };  
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<int> updateCustomer(String firstName, String middleName, String lastName, String street, String city, String stateProvince, String country, String postalCode, String drivingLicenseId, String email, String phoneNumber) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars');
  // Define the query parameters
  var params = {
    'firstName': firstName,
    'middleName': middleName,
    'lastName': lastName,
    'street': street,
    'city': city,
    'stateProvince': stateProvince,
    'country': country,
    'postalCode': postalCode,
    'drivingLicenseId': drivingLicenseId,
    'email': email,
    'phoneNumber': phoneNumber,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<int> updateCar(String carNumber, String modelId, String email, bool  availability) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars');
  // Define the query parameters
  var params = {
    'carNumber': carNumber,
    'carModel': modelId,
    'email': email,
    'availability': availability
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<int> addCustomer(String firstName, String middleName, String lastName, String street, String city, String stateProvince, String country, String postalCode, String drivingLicenseId, String email, String phoneNumber) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars');
  // Define the query parameters

  var params = {
    'firstName': firstName,
    'middleName': middleName,
    'lastName': lastName,
    'street': street,
    'city': city,
    'stateProvince': stateProvince,
    'country': country,
    'postalCode': postalCode,
    'drivingLicenseId': drivingLicenseId,
    'email': email,
    'phoneNumber': phoneNumber,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<int> addCar(String carNumber, String modelId, String costPerDay, String numberOfPersons, String lateFee) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars');
  // Define the query parameters
  var params = {
    'carNumber': carNumber,
    'modelId': modelId,
    'costPerDay': costPerDay,
    'numberOfPersons': numberOfPersons,
    'lateFee': lateFee,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<int> deleteCustomer(String email) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars');
  // Define the query parameters
  var params = {
    'email': email,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<int> deleteCar(String carNumber) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars');
  // Define the query parameters
  var params = {
    'carNumber': carNumber,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<List> getAvailableCars(String startDate, String endDate) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars');
  // Define the query parameters
  var params = {
    'startDate': startDate,
    'endDate': endDate,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

Future<List> getAvailableCarsByModel(String startDate, String endDate, String modelId) async {
  // Define the url of the api
  var url = Uri.parse('http://192.168.56.1:8000/viewTables/availableCars');
  // Define the query parameters
  var params = {
    'startDate': startDate,
    'endDate': endDate,
    'modelId': modelId,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  return jsonDecode(response.body);
}

// // view particular customer booking
// //Future<List> getCustomerBooking(String email) async {
//   // Define the url of the api
//   //var url = Uri.parse('http://' + ipAddress + ':8000/viewTables/customerBooking');
//   // Define the query parameters
//   var params = {
//     'email': email,
//   };
//   // Encode the query parameters
//   var query = Uri(queryParameters: params).query;
//   // Append the query to the url
//   //var fullUrl = url.replace(query: query);
//   // Make a get request to the api
//   //var response = await http.get(fullUrl);
//   // Decode the response body as json
//   //return jsonDecode(response.body);
// }

// Book a car
Future<int> bookCar(String carNumber, String email, String startDate, String endDate, String insuranceId, String discountId) async {
  // Define the url of the api
  var url = Uri.parse('http://');
  // Define the query parameters
  var params = {
    'carNumber': carNumber,
    'email': email,
    'startDate': startDate,
    'endDate': endDate,
    'insuranceId': insuranceId,
    'discountId': discountId,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}


// Give review
Future<int> giveReview(String carNumber, String rating) async {
  // Define the url of the api
  var url = Uri.parse('http://');
  // Define the query parameters
  var params = {
    'carNumber': carNumber,
    'star': rating,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  var data = jsonDecode(response.body);
  // Return the result as an integer
  return data;
}

// Show all bookings by a particular customer
Future<List> getCustomerBooking(String email) async {
  // Define the url of the api
  var url = Uri.parse('http://');
  // Define the query parameters
  var params = {
    'email': email,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  return jsonDecode(response.body);
}


// Fetch all cars of a particular customer

Future<List> getCustomerCars(String email) async {
  // Define the url of the api
  var url = Uri.parse('http://');
  // Define the query parameters
  var params = {
    'email': email,
  };
  // Encode the query parameters
  var query = Uri(queryParameters: params).query;
  // Append the query to the url
  var fullUrl = url.replace(query: query);
  // Make a get request to the api
  var response = await http.get(fullUrl);
  // Decode the response body as json
  return jsonDecode(response.body);
}
