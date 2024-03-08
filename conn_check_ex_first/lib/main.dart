import 'package:conn_check_ex_first/app/modules/conn_page/controllers/conn_page_controller.dart';
import 'package:conn_check_ex_first/app/modules/todo_page/views/todo_page_view.dart';
//import 'package:conn_check_ex_first/app/modules/conn_page/views/conn_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ConnPageController());
  runApp(
    GetMaterialApp(
      title: "Application",
      //initialRoute: AppPages.INITIAL,
      //getPages: AppPages.routes,
      //home: ConnPageView(),
      home: TodoPageView(),
    ),
  );
}
