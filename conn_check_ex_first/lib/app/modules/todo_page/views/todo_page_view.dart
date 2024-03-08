import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/todo_page_controller.dart';

class TodoPageView extends StatelessWidget {
  final TodoPageController todoController = Get.put(TodoPageController());
  TodoPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TodoPageView'),
          centerTitle: true,
        ),
        body: Obx(() {
          return ListView.builder(
              itemCount: todoController.pList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(todoController.pList[index].id.toString()),
                    Text(todoController.pList[index].firstName.toString()),
                    Text(todoController.pList[index].lastName.toString()),
                    Text(todoController.pList[index].message.toString()),
                  ],
                );
              });
        }));
  }
}
