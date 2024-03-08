import 'package:conn_check_ex_first/app/api/api_mixin_rest.dart/ex_rest.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiCall with REST{
   ApiCall._instance() {
    REST.dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
  }
  static ApiCall get instance => ApiCall._instance();
}