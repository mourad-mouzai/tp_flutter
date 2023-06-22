import 'package:first_project/layouts.dart';
import 'package:first_project/pages/home_page.dart';
import 'package:first_project/pages/login/login_view.dart';
import 'package:first_project/pages/message_page.dart';
import 'package:first_project/pages/profil_page.dart';
import 'package:first_project/pages/settings_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: _Paths.LAYOUTPAGE,
      page: () => const PagesLayout(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => const MessagePage(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => const ProfilPage(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsPage(),
    ),
  ];
}
