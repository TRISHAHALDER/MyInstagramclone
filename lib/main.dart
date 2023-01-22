import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/login_screen.dart';
import 'package:instagram_clone/Screen/signup.dart';
import 'package:instagram_clone/responsive/mobilescreen_layout.dart';
import 'package:instagram_clone/responsive/webscreen_layout.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/responsive/responsive_layout_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCFaO8_l_f3GsivpyaaP6lmZgRW-YFwWjs",
        appId: "1:559588418847:web:61748124d2338f615afc2a",
        messagingSenderId: "559588418847",
        projectId: "instaclone2023-7d75f",
        storageBucket: "instaclone2023-7d75f.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram_clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      //home: const ResponsiveLayout(
      //  mobileScreenLayout: MobileScreenLayout(),
        //webScreenLayout: WebScreenLayout(),
      //),
      home:SignupScreen(),
    );
  }
}
