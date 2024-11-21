import 'package:flutter/material.dart';
import 'package:marriage_management_app/my_app.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/services/shared_preference_service.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService().init();
  runApp( MyApp(
    initialRoute: AppRoutes.signUpScreen
  ));
}


