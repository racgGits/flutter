import 'package:dominos_main/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/login_app_bar.dart';
import '../widget/login_nav_bar.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();

}

class _SignupState extends State<Signup> {
  bool isEmail = true;
  
  void toggleEmail() {
    setState(() {
      isEmail = !isEmail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight), 
          child: LoginAppBar()),
      body: Container(
        
          height: double.infinity,
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: GestureDetector(
            onHorizontalDragUpdate: (DragUpdateDetails dragUpdateDetails) {
    // Write the actions here
          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Login(),
                                            ),
                                          );
          },
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://logos-download.com/wp-content/uploads/2016/04/Dominos_Pizza_logo_black.jpg"),
                                fit: BoxFit.cover)),
                        width: double.infinity,
                        height: 110,
                        alignment: Alignment.centerLeft,
                       
                      ),
                      SizedBox(height: 40),
                    Container(
                      
                        child: Text(
                          'WELCOME',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Container(
                      
                        child: Text(
                          'Sign in to Dominos to Continue',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(height: 40,),
                    Container(
                      decoration: BoxDecoration(
                     border: Border.all(color: Colors.white)
                       ),
                     child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                         
                      
                          width: double.infinity,
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                             
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.white),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                     ),
                               hintText: 'Email',
                              hintStyle: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )),
                        ),
                      SizedBox(height: 20,), 
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                     border: Border( bottom: BorderSide(width: 1.0, color: Colors.white),)
                       ),
                          width: double.infinity,
                          child: TextFormField(
                             style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.white),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                     ),
                              hintText: 'Password',
                              hintStyle: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )),
                      ),
                        SizedBox(height: 20,),
                      ],
                    ), 
                    ),
                     SizedBox(height: 20,),
                    TextButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: BorderSide(color: Colors.white)))),
                              child: Text('SUBMIT',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                              onPressed: () {}),
                    
                    
                  ],
                ),
              ),
            ),
          )),
      //bottomNavigationBar: LoginNavBar(isEmail: isEmail, toggleEmail: toggleEmail),
    );
  }
}