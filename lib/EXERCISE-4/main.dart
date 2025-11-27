import 'package:flutter/material.dart';
import 'database/jokes.dart';
import '../ui/screens/welcome_screen.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? favoriteJokeId;

  void handleFavoriteTap(int id) {
    setState(() {
      favoriteJokeId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text("Favorite Jokes"),
      ),
      body: WelcomeScreen(
        favoriteJokeId: favoriteJokeId,
        onFavoriteTap: handleFavoriteTap,
      ),
    );
  }
}
