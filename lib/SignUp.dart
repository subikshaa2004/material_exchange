import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/signup_image.png', height: 120), // Add your image here
              SizedBox(height: 20),
              Text(
                'Sign Up',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              _buildTextField('Username'),
              SizedBox(height: 16),
              _buildTextField('Email'),
              SizedBox(height: 16),
              _buildTextField('Password', obscureText: true),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Handle sign up
                },
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF303F9F),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Already have an account? Login',
                  style: GoogleFonts.poppins(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        labelStyle: GoogleFonts.poppins(color: Colors.white70),
      ),
      style: GoogleFonts.poppins(color: Colors.white),
    );
  }
}
