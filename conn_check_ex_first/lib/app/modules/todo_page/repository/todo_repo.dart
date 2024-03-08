import 'dart:convert';
import 'dart:developer';

import 'package:conn_check_ex_first/app/api/api_mixin_rest.dart/api_call.dart';
import 'package:conn_check_ex_first/app/api/api_mixin_rest.dart/ex_rest.dart';
import 'package:conn_check_ex_first/app/data/person_modal.dart';
import 'package:dio/dio.dart';

class MyRepo {
  //PersonModal personModal = PersonModal();
  List<PersonModal> myPersonList = [];
  getAllPersons() async {
    try {
      final res = await ApiCall.instance.restMainApi(
        onSuccess: (s) {},
        restMethodType: MethodType.get,
        apiData: {},
        url:
            'http://6308255046372013f576f9b5.mockapi.io/person/', // Provide the correct URL
        mapHeader: {},
      );

      if (res != null) {
        // Check for null response
        List<dynamic> data = jsonDecode(res.data); // Decode as List, not Map
        List<PersonModal> persons =
            data.map((e) => PersonModal.fromJson(e)).toList();

        return persons;
      } else {
        // Handle API error (optional)
        print(
            'API error: ${res?.statusCode}'); // Handle null response gracefully
      }
    } catch (e) {
      log('Error in display Data = ' + e.toString());
    }
    return []; // Return an empty list if any errors occur
  }
}
