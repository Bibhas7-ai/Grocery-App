import 'package:flutter/material.dart';
import 'package:groceryapp/admin/admin_dashboard.dart';
import 'package:groceryapp/admin/admin_login.dart';
import 'package:groceryapp/customer/dashboard.dart';
import 'package:groceryapp/customer/login.dart';
import 'package:groceryapp/vendor/vendor_dashboard.dart';
import 'package:groceryapp/vendor/vendor_login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        debugShowCheckedModeBanner: false, 
      initialRoute: '/',
      routes: {
        '/': (context) => VendorLoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/adminlogin': (context) => AdminLoginScreen(),
        '/admindashboard': (context) => AdminDashboard(),
        '/vendordashboard': (context) => VendorDashboardScreen(),
        '/vendorlogin': (context) => VendorLoginScreen(),
      },
    );
  }
}