import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/home_screen.dart';
import 'controllers/news_controller.dart';

void main() {
  runApp(NewsAggregatorApp());
}

class NewsAggregatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Inject NewsController globally
    Get.put(NewsController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Aggregator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}
