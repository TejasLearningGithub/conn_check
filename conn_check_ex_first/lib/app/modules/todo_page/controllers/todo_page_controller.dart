import 'dart:convert';

import 'package:conn_check_ex_first/app/data/person_modal.dart';
import 'package:conn_check_ex_first/app/modules/todo_page/repository/todo_repo.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TodoPageController extends GetxController {
  MyRepo myRepo = MyRepo();
  List<PersonModal> pList = <PersonModal>[].obs;

  fetchPerson() async {
    final ePersonData = await myRepo.getAllPersons();
    if (ePersonData != null) {
      pList = ePersonData;
      update();
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchPerson();
  }
}
