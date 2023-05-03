import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/widgets/appbar_button.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications Screen"),
      ),
    );
  }
}
