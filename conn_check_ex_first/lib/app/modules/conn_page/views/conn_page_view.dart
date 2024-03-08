import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/conn_page_controller.dart';

class ConnPageView extends StatelessWidget {
  final ConnPageController connectivityController =
      Get.put(ConnPageController());

  ConnPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConnPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ConnPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
