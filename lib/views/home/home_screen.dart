import 'package:demo_ujjval/views/home/widgets/event_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: EventCard(),
        ),
      ),
    );
  }
}
