import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/api_handling_ex_controller.dart';

class ApiHandlingExView extends GetView<ApiHandlingExController> {
  const ApiHandlingExView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ApiHandlingExView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ApiHandlingExView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
