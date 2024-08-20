import 'package:fast_delivery/bindings/initialbindings.dart';
import 'package:fast_delivery/core/localization/changelocal.dart';
import 'package:fast_delivery/core/localization/translation.dart';
import 'package:fast_delivery/core/services/services.dart';
import 'package:fast_delivery/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: controller.appTheme,
      // pour assurer linjection de crud 
      initialBinding: InitialBindings(),

      //pour tester les widget a utiliser
      // home: const Test(),

      //home: const Language(),
      // medem nesta3mel fl middleWare
      // nemchi f routes.dart nzid l middle ware lel page par default l nhebo yabde biha

      //routes: routes,
      // medem ne5dem bel getx bch nesta3mrl route ta3 l getx
      getPages: routes,
    );
  }
}
