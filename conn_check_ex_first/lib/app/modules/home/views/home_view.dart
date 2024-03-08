import 'package:conn_check_ex_first/app/modules/conn_page/views/conn_page_view.dart';
import 'package:conn_check_ex_first/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

//import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connection Checker Page\n - HomeView() '),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Get.to(ConnPageView());
        },
        child: const Text('Goto Check Connection Page'),
      )),
    );
  }
}
