import 'package:MagicWithGetx/interfaces/functionality/fifth.dart';
import 'package:MagicWithGetx/interfaces/functionality/first.dart';
import 'package:MagicWithGetx/interfaces/functionality/fourth.dart';
import 'package:MagicWithGetx/interfaces/functionality/index.dart';
import 'package:MagicWithGetx/interfaces/functionality/second.dart';
import 'package:MagicWithGetx/interfaces/functionality/third.dart';
import 'package:MagicWithGetx/interfaces/home/index.dart';
import 'package:MagicWithGetx/interfaces/slides/first.dart';
import 'package:MagicWithGetx/interfaces/snackbars/index.dart';
import 'package:MagicWithGetx/routes/routingConstants.dart';
import 'package:get/route_manager.dart';

class PageRoutes {
  static List<GetPage> routes = [
    GetPage(name: RouteNames.HomeRoute, page: () => HomeIndex()),
    GetPage(name: RouteNames.FirstRoute, page: () => FirstScreen()),
    GetPage(name: RouteNames.SnackbarsRoute, page: () => SnackbarsIndex()),
    GetPage(
        name: RouteNames.FunctionalityRoute, page: () => FunctionalityIndex()),
    GetPage(name: RouteNames.SecondRoute, page: () => SecondScreen()),
    GetPage(name: RouteNames.ThirdRoute, page: () => ThirdScreen()),
    GetPage(name: RouteNames.FourthRoute, page: () => FourthScreen()),
    GetPage(name: RouteNames.FifthRoute, page: () => FifthScreen()),
    GetPage(name: RouteNames.FirstSlideRoute, page: () => FirstSlide())
  ];
}
