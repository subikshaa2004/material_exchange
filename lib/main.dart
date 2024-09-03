import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login & Signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: LoginPage(), // Start with SignupPage or LoginPage
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Background_image.jpeg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(maxWidth: 350), // Maximum width of the white box
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 4),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                _buildTextField('Username'),
                SizedBox(height: 16),
                _buildTextField('Password', obscureText: true),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  ),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text(
                    'Don\'t have an account? Sign Up',
                    style: GoogleFonts.poppins(color: Colors.blue),
                  ),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // Handle forgot password
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(color: Colors.blue),
                  ),
                ),
              ],
            ),
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
        fillColor: Colors.white.withOpacity(0.8),
        labelStyle: GoogleFonts.poppins(color: Colors.black54),
      ),
      style: GoogleFonts.poppins(color: Colors.black),
    );
  }
}

class SignupPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _workingStatusController = TextEditingController();
  final TextEditingController _courseController = TextEditingController();
  final TextEditingController _expertiseDomainController = TextEditingController();
  final TextEditingController _yearOfPassoutController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Background_image.jpeg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(maxWidth: 370,maxHeight: 700), // Maximum width of the white box
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 4),
                  blurRadius: 8,
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildTextField('Name', _nameController),
                  SizedBox(height: 16),
                  _buildTextField('Email ID', _emailController),
                  SizedBox(height: 16),
                  _buildTextField('Password', _Password),
                  SizedBox(height: 16),
                  _buildTextField('Working Status', _workingStatusController),
                  SizedBox(height: 16),
                  _buildTextField('Course', _courseController),
                  SizedBox(height: 16),
                  _buildTextField('Expertise Domain', _expertiseDomainController),
                  SizedBox(height: 16),
                  _buildTextField('Year of Passout', _yearOfPassoutController),
                  SizedBox(height: 16),
                  _buildTextField('Description', _descriptionController),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      // Save the user data
                      userManager.user = User(
                        name: _nameController.text,
                        email: _emailController.text,
                        workingStatus: _workingStatusController.text,
                        course: _courseController.text,
                        expertiseDomain: _expertiseDomainController.text,
                        yearOfPassout: _yearOfPassoutController.text,
                        description: _descriptionController.text,
                      );

                      // Navigate to profile page to view the saved data
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
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
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
        labelStyle: GoogleFonts.poppins(color: Colors.black54),
      ),
      style: GoogleFonts.poppins(color: Colors.black),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white, displayColor: Colors.white),
        backgroundColor: Colors.indigo, // Default background color
      ),
      home: MainMenuPage(),
    );
  }
}

class MainMenuPage extends StatefulWidget {
  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle navigation based on index
    switch (index) {
      case 0:
      // Navigate to Home
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
        break;
      case 1:
      // Navigate to Profile
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
      case 2:
      // Handle Logout
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LogoutPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo, // Blue background color
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Project Hub Menu',
                  style: GoogleFonts.poppins(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 0, // Space between columns
                  mainAxisSpacing: 0, // Space between rows
                  padding: EdgeInsets.zero,
                  children: [
                    _buildMenuButton(Icons.home, 'Project Hub'),
                    _buildMenuButton(Icons.computer, 'Hackathon'),
                    _buildMenuButton(Icons.library_books, 'Materials'),
                    _buildMenuButton(Icons.group, 'Mentoring'),
                    _buildMenuButton(Icons.work, 'Workshops'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildMenuButton(IconData icon, String label) {
    return Container(
      margin: EdgeInsets.all(4.0), // Small margin around each button
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // Button background color
          onPrimary: Colors.indigo, // Button text color
          padding: EdgeInsets.all(16), // Larger padding
          textStyle: GoogleFonts.poppins(
            fontSize: 16, // Font size
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(color: Colors.indigo, width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30, // Larger icon size
              color: Colors.indigo, // Icon color
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis, // Handle long text
                style: TextStyle(
                  fontSize: 16, // Ensure text size fits within button
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class User {
  String name;
  String email;
  String workingStatus;
  String course;
  String expertiseDomain;
  String yearOfPassout;
  String description;

  User({
    required this.name,
    required this.email,
    required this.workingStatus,
    required this.course,
    required this.expertiseDomain,
    required this.yearOfPassout,
    required this.description,
  });
}
class UserManager {
  static final UserManager _instance = UserManager._internal();
  User? user;

  factory UserManager() {
    return _instance;
  }

  UserManager._internal();
}

final userManager = UserManager();

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _workingStatusController = TextEditingController();
  final TextEditingController _courseController = TextEditingController();
  final TextEditingController _expertiseDomainController = TextEditingController();
  final TextEditingController _yearOfPassoutController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  bool _isEditingName = false;
  bool _isEditingEmail = false;
  bool _isEditingWorkingStatus = false;
  bool _isEditingCourse = false;
  bool _isEditingExpertiseDomain = false;
  bool _isEditingYearOfPassout = false;
  bool _isEditingDescription = false;

  @override
  void initState() {
    super.initState();
    if (userManager.user != null) {
      _nameController.text = userManager.user!.name;
      _emailController.text = userManager.user!.email;
      _workingStatusController.text = userManager.user!.workingStatus;
      _courseController.text = userManager.user!.course;
      _expertiseDomainController.text = userManager.user!.expertiseDomain;
      _yearOfPassoutController.text = userManager.user!.yearOfPassout;
      _descriptionController.text = userManager.user!.description;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _workingStatusController.dispose();
    _courseController.dispose();
    _expertiseDomainController.dispose();
    _yearOfPassoutController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(
            color: Colors.white
        ),),
        backgroundColor: Colors.indigo[300],
      ),
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildProfilePicture(),
            SizedBox(height: 32),
            Expanded(
              child: ListView(
                children: [
                  _buildSectionHeading('Name'),
                  _buildProfileField('Name', _nameController, _isEditingName, () {
                    setState(() {
                      _isEditingName = !_isEditingName;
                    });
                  }),
                  SizedBox(height: 16),
                  _buildSectionHeading('Email ID'),
                  _buildProfileField('Email ID', _emailController, _isEditingEmail, () {
                    setState(() {
                      _isEditingEmail = !_isEditingEmail;
                    });
                  }),
                  SizedBox(height: 16),
                  _buildSectionHeading('Working Status'),
                  _buildProfileField('Working Status', _workingStatusController, _isEditingWorkingStatus, () {
                    setState(() {
                      _isEditingWorkingStatus = !_isEditingWorkingStatus;
                    });
                  }),
                  SizedBox(height: 16),
                  _buildSectionHeading('Course'),
                  _buildProfileField('Course', _courseController, _isEditingCourse, () {
                    setState(() {
                      _isEditingCourse = !_isEditingCourse;
                    });
                  }),
                  SizedBox(height: 16),
                  _buildSectionHeading('Expertise Domain'),
                  _buildProfileField('Expertise Domain', _expertiseDomainController, _isEditingExpertiseDomain, () {
                    setState(() {
                      _isEditingExpertiseDomain = !_isEditingExpertiseDomain;
                    });
                  }),
                  SizedBox(height: 16),
                  _buildSectionHeading('Year of Passout'),
                  _buildProfileField('Year of Passout', _yearOfPassoutController, _isEditingYearOfPassout, () {
                    setState(() {
                      _isEditingYearOfPassout = !_isEditingYearOfPassout;
                    });
                  }),
                  SizedBox(height: 16),
                  _buildSectionHeading('Description'),
                  _buildProfileField('Description', _descriptionController, _isEditingDescription, () {
                    setState(() {
                      _isEditingDescription = !_isEditingDescription;
                    });
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePicture() {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/profile_picture.png'),
        ),
        SizedBox(height: 8),
        //TextButton.icon(
        // onPressed: () {
        // Implement profile picture change
        // },
        //icon: Icon(Icons.camera_alt, color: Colors.white),
        //label: Text("Change Picture", style: TextStyle(color: Colors.white)),
        // ),
      ],
    );
  }

  Widget _buildSectionHeading(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildProfileField(String label, TextEditingController controller, bool isEditing, VoidCallback onEdit) {
    return Row(
      children: [
        Expanded(
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: isEditing
                ? TextField(
              key: ValueKey<bool>(isEditing),
              controller: controller,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                fillColor: Colors.transparent, // No background color
              ),
              style: GoogleFonts.poppins(color: Colors.white),
            )
                : Container(
              key: ValueKey<bool>(isEditing),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              child: Text(
                controller.text,
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        IconButton(
          icon: Icon(isEditing ? Icons.check : Icons.edit, color: Colors.white),
          onPressed: onEdit,
          splashRadius: 20,
        ),
      ],
    );
  }
}
class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Logout')),
      body: Center(child: Text('You have been Logged out Successfully!!!',style:TextStyle(
          fontSize: 50,color: Colors.blueAccent
      ))),
    );
  }
}