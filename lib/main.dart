import 'package:MagicWithGetx/interfaces/home/index.dart';
import 'package:MagicWithGetx/routes/listPages.dart';
import 'package:MagicWithGetx/routes/routingConstants.dart';
import 'package:MagicWithGetx/utils/translations.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      //enabled: !kReleaseMode,
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        locale: Locale('es'), // <--- Add the locale
        builder: DevicePreview.appBuilder,
        translations: MyTranslations(),
        defaultTransition: Transition.cupertino,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[300],
          primaryColor: Color.fromRGBO(139, 18, 246, 1),
          accentColor: Color.fromRGBO(45, 43, 85, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // textTheme: GoogleFonts.poppinsTextTheme(
          //   Theme.of(context).textTheme,
          // ),
        ),
        darkTheme: ThemeData.dark(),
        //themeMode: ThemeMode.dark,
        initialRoute: RouteNames.HomeRoute,
        getPages: PageRoutes.routes);
    //home: HomeIndex());
  }
}
