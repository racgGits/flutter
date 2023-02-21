import 'package:dominos_main/auth/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../auth/signup.dart';
import '../widget/login_app_bar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Black_colour.jpg/675px-Black_colour.jpg?20170110114905"),
                    fit: BoxFit.cover)),
            height: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: GestureDetector(
               onHorizontalDragUpdate: (DragUpdateDetails dragUpdateDetails) {
    // Write the actions here
          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Cart(),
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
                         decoration: BoxDecoration(
    border: Border.all(color: Colors.white)
  ),
                        width: double.infinity,
                        child: Column(children: [
                          SizedBox(height: 25,),
                          Container( 
                          width: double.infinity,
                          child: Center(
                            child: Text('LOGIN WITH YOUR VALID MOBILE NUMBER',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ))) ,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                            SizedBox(height: 10,),
                            TextFormField(
                             style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.white),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                     ),  
                              hintText: 'Phone',
                              hintStyle: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                        ),
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
                              ]
                            ),
                          ),
                          
                          
                              SizedBox(height: 25,),
                        ]),
                      ),
                      SizedBox(height: 35),
                      
                      SizedBox(height: 25),
                      Container(
                         
                         decoration: BoxDecoration(
                          
    border: Border.all(color: Colors.white)
  ),
                        width: double.infinity,
                        child: Column(
                          
                                  children: [
                                  SizedBox(height: 25,),
                                  Text("LOGIN WITH YOUR EXISTING ACCOUNT",style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ) ,),
                                  SizedBox(width: 15),
                                  Column(
                                    children: [
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
                              child: Text('DOMINO''S PASSWORD ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                              onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Signup(),
                                              ),
                                            );
                                          }),
                                          SizedBox(height: 25,)])
                                  
                     

                                ]

                       ),
                      
                  )
                  ],
                  ),
                ),
              ),
            )),
    bottomNavigationBar: Container(
     color: Colors.black,
    child: Row(children: [
      SizedBox(width: 20,),
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
                            child: Text('SKIP LOGIN',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {}),
                            SizedBox(width: 176,),
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
                            child: Text('TERMS OF USE',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {}),
    ]),
    
  ),);
  }
}
