import 'package:flutter/material.dart';
import 'package:mvvm_flutter/models/movies_main.dart';
import 'package:mvvm_flutter/res/app_context_extension.dart';
import 'package:mvvm_flutter/view/details/movies_detail_sscreens.dart';
import 'package:mvvm_flutter/view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: context.resources.color.colorPrimary)
            .copyWith(secondary: context.resources.color.colorAccent),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        MovieDetailsScreen.id: (context) => MovieDetailsScreen(
            ModalRoute.of(context)!.settings.arguments as Movie),
      },
    );
  }
}
