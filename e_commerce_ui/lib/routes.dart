import 'package:e_commerce_ui/screen/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce_ui/screen/detail/details_screen.dart';
import 'package:e_commerce_ui/screen/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_ui/screen/home/home_screen.dart';
import 'package:e_commerce_ui/screen/login_success/login_success_screen.dart';
import 'package:e_commerce_ui/screen/otp/otp_screen.dart';
import 'package:e_commerce_ui/screen/sign_in/sign_in_screen.dart';
import 'package:e_commerce_ui/screen/sign_up/sign_up_screen.dart';
import 'package:e_commerce_ui/screen/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

//we will use name route
//all routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
