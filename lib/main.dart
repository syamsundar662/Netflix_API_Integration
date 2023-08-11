import 'package:flutter/material.dart';
import 'package:netflix_api/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(  
          colorScheme: const ColorScheme.dark(background: Colors.black87 ),
          useMaterial3: true,
          
        ),
        home:  ScreenHomePage(),
      ),
    );
  }
}
