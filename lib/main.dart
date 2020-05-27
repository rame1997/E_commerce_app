import 'package:commerce/provider/adminMode.dart';
import 'package:commerce/provider/cartItem.dart';
import 'package:commerce/provider/modelHud.dart';
import 'package:commerce/screens/admin/addProduct.dart';
import 'package:commerce/screens/admin/adminHome.dart';
import 'package:commerce/screens/admin/editProduct.dart';
import 'package:commerce/screens/admin/manageProduct.dart';
import 'package:commerce/screens/login_screen.dart';
import 'package:commerce/screens/signup_screen.dart';
import 'package:commerce/screens/user/CartScreen.dart';
import 'package:commerce/screens/user/homePage.dart';
import 'package:commerce/screens/user/productInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ModelHud>(
          create: (context) => ModelHud(),
        ),
        ChangeNotifierProvider<CartItem>(
          create: (context) => CartItem(),
        ),
        ChangeNotifierProvider<AdminMode>(
          create: (context) => AdminMode(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,
        routes: {
          CartScreen.id: (context) => CartScreen(),
          ProductInfo.id: (context) => ProductInfo(),
          EditProduct.id: (context) => EditProduct(),
          ManageProducts.id: (context) => ManageProducts(),
          LoginScreen.id: (context) => LoginScreen(),
          SignupScreen.id: (context) => SignupScreen(),
          HomePage.id: (context) => HomePage(),
          AdminHome.id: (context) => AdminHome(),
          AddProduct.id: (context) => AddProduct(),
        },
      ),
    );
  }
}