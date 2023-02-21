import 'package:dominos_main/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/login_app_bar.dart';
import '../widget/login_nav_bar.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();

}

class _CartState extends State<Cart> {

  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      // padding: const EdgeInsets.only(left: 20.0),
      // title: const Text('Cart'),
      title: new Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: new Text("Cart"),
    ),
     actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
      onPressed: () {
        // do something
      },
    )
  ],
      // centerTitle: true,
          
          ),
          body: Container(
          height: double.infinity,
          width: double.infinity,
  decoration: const BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/images/cartBG1.png"),
        fit: BoxFit.cover),
  ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
              ],
            ),
          ),
          ),
          
          bottomNavigationBar: BottomNavigationBar(
            
   showUnselectedLabels: true,
    items: const <BottomNavigationBarItem>[
      
      BottomNavigationBarItem(
        backgroundColor: Colors.black,
        icon: Icon(Icons.home_outlined),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.black,
        icon: Icon(Icons.percent),
        label: 'Offers',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.black,
        icon: Icon(Icons.shopping_cart),
        label: 'Cart',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.black,
        icon: Icon(Icons.person),
        label: 'Account',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.black,
        icon: Icon(Icons.shopping_bag_outlined),
        label: 'Orders',
      ),
    ],
  ),
          
      //bottomNavigationBar: LoginNavBar(isEmail: isEmail, toggleEmail: toggleEmail),
    );
  }
}