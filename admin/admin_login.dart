import 'package:flutter/material.dart';
import 'package:groceryapp/admin/admin_dashboard.dart'; // Import the admin dashboard screen

class AdminLoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Function to handle login logic
  void handleLogin(BuildContext context) {
    // Fake authentication logic
    String fakeEmail = '1@gmail.com';
    String fakePassword = '1';

    // Check if the entered credentials match the hardcoded credentials
    if (emailController.text == fakeEmail && passwordController.text == fakePassword) {
      // Navigate to the admin dashboard
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminDashboard()));
    } else {
      // Show error message for invalid credentials
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid email or password')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: emailController, // Assign controller
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email), // Add email icon
              ),
            ),
            SizedBox(height: 12),
            TextFormField(
              controller: passwordController, // Assign controller
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock), // Add lock icon
              ),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => handleLogin(context), // Call login function
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
