import 'package:adet/homepage.dart';
import 'package:adet/loginRegis/regis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key, required this.showRegisterPage, required Null Function() showLoginPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Make Scaffold background transparent
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/mainbg.png'), // Your background image path
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  Image.asset('lib/icons/twologo.png', width: 250), // Adjusted logo size
                  SizedBox(height: 25),
                  //San Fernando Flood Risk Reduction and Management
                  Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Text color adjusted for visibility on the background image
                    )
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Join the community effort in safeguarding\nour city against flooding challenges',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black, // Text color adjusted for visibility on the background image
                    ),
                  ),
                  SizedBox(height: 40),
                         
                  //email textfield
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2, // Adjusted width
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF1C96C5)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            
                            hintText: 'Email',
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                
                  //password textfield
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2, // Adjusted width
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF1C96C5)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Password',
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                
                  //sign in button
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click, // Change cursor on hover
                        child: GestureDetector(
                          onTap: () {
                            // Implement your sign-in logic here
                            // For example, you can print the email and password
                            print('Email: ${_emailController.text}');
                            print('Password: ${_passwordController.text}');
                            // Navigate to HomePage after successful sign-in
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.2, // Adjusted width
                            padding: EdgeInsets.symmetric(vertical: 15), // Adjusted height
                            decoration: BoxDecoration(
                              color: Color(0xFF1C96C5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                
                  //not a member? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member? ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Text color adjusted for visibility on the background image
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to RegistrationPage when "Register now" is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterPage(showLoginPage: () {  },)),
                          );
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click, // Change cursor on hover
                          child: Text(
                            'Register now',
                            style: TextStyle(
                              color: Color(0xFF20A7DB),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
