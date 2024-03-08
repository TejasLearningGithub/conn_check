import 'package:get/get.dart';

import '../modules/api_handling_ex/bindings/api_handling_ex_binding.dart';
import '../modules/api_handling_ex/views/api_handling_ex_view.dart';
import '../modules/conn_page/bindings/conn_page_binding.dart';
import '../modules/conn_page/views/conn_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/todo_page/bindings/todo_page_binding.dart';
import '../modules/todo_page/views/todo_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CONN_PAGE,
      page: () => ConnPageView(),
      binding: ConnPageBinding(),
    ),
    GetPage(
      name: _Paths.API_HANDLING_EX,
      page: () => const ApiHandlingExView(),
      binding: ApiHandlingExBinding(),
    ),
    GetPage(
      name: _Paths.TODO_PAGE,
      page: () => TodoPageView(),
      binding: TodoPageBinding(),
    ),
  ];
}
