import 'dart:developer';

import 'package:conn_check_ex_first/app/data/person_modal.dart';
import 'package:dio/dio.dart';

enum MethodType {
  get,
  post,
  put,
  delete,
}

mixin REST {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'http://6308255046372013f576f9b5.mockapi.io/person/',
      connectTimeout: const Duration(
        minutes: 1,
      ),
      receiveTimeout: const Duration(
        minutes: 1,
      ),
    ),
  );
  Future restMainApi({
    required String url,
    Map<String, dynamic>? apiData,
    required MethodType restMethodType,
    required void Function(Map<String, dynamic> mapValues) onSuccess,
    required Map<String, dynamic>? mapHeader,
  }) async {
    List<PersonModal> perList = [];
    try {
      log(apiData.toString());
      log(url.toString());
      if (restMethodType == MethodType.get) {
        // final myGetHeader = {
        //   'accept': 'application/json',
        //   'Tra-ID': storg.read('trx_id'),
        //   'Device-ID': 'mobile',
        // };
        final response = await dio.get(url,
            options: Options(
              contentType: 'application/json',
              responseType: ResponseType.json,
              headers: mapHeader,
            ));
        // Iterable jsonData = response.data;
        // perList = jsonData.map((e) => PersonModal.fromJson(e)).toList();
        onSuccess(response.data);
        return response;
      }
      if (restMethodType == MethodType.post) {
        Response res = await dio.post(
          url,
          data: apiData,
          options: Options(
            //contentType: 'application/json',
            responseType: ResponseType.json,
            headers: mapHeader,
          ),
        );
        if (res.statusCode == 200) {
          log('DATA  = ${res.data}');
          String transactionId = res.data['data'][0]['trx_id'];
          log(transactionId);
          String mName = res.data['data'][0]['Name'];
          log(mName);
          onSuccess(res.data);
        }
      }
    } catch (_) {
      log(_.toString());
    }
  }
}
