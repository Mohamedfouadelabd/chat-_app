import 'package:chat_app/Auth/Register/register_screen.dart';
import 'package:chat_app/Auth/login/login_screen.dart';
import 'package:chat_app/Homescreen/home_screen.dart';
import 'package:chat_app/Theme/my_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
         theme: MyTheme.primaryTheme,
          debugShowCheckedModeBanner: false,
            initialRoute: RegisterScreen.routeName,
            routes: {
            HomeScreen.routeName:(context) => HomeScreen(),
              RegisterScreen.routeName: (context) => RegisterScreen(),
           LoginScreen.routeName:(context) => LoginScreen(),
            },
          );
        });
  }
}
