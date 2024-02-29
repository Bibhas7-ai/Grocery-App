import 'package:flutter/material.dart';
import 'package:groceryapp/vendor/vendor_dashboard.dart';

class VendorLoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Function to handle login logic
  void handleLogin(BuildContext context) {
    // Fake authentication logic for vendor login
    String fakeEmail = 'a@gmail.com';
    String fakePassword = '1';

    // Check if the entered credentials match the hardcoded credentials
    if (emailController.text == fakeEmail && passwordController.text == fakePassword) {
      // Navigate to the vendor dashboard
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VendorDashboardScreen()));
    } else {
      // Show error message for invalid credentials
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid email or password')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor Login'),
        backgroundColor: Color.fromARGB(255, 54, 99, 56), // Set app bar background color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: emailController, // Assign controller
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 12),
            TextFormField(
              controller: passwordController, // Assign controller
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => handleLogin(context), // Call login function
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 54, 99, 56), // Set button background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
