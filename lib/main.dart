import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'screens/screen_camera/camera_page.dart';
import 'screens/splash.dart';



Future<Null> main()async {
  WidgetsFlutterBinding.ensureInitialized();
cameras= await availableCameras();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
   home: Splash(),
    // home: MainPage(),
  ));
}