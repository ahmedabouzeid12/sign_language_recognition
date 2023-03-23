import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sign_language_recognition/screens/three_d_screen.dart';
import 'package:sign_language_recognition/network/remote/dio_helper.dart';
import 'package:sign_language_recognition/screens/language_screen.dart';
import 'locale/locale.dart';
import 'locale/locale_controller.dart';
import 'login/login_screen.dart';
import 'on_boarding/on_boarding_screen.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await MyLocaleController.init();
  await DioHelper.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var screen;
    if(MyLocaleController.onBoarding()) screen = OnBoardingScreen();
    else if(FirebaseAuth.instance.currentUser==null) screen = LoginScreen();
    else screen = ThreeDScreen();

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) {
         return OKToast(
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              locale: Locale(MyLocaleController.getLang()),
              translations: MyLocale(),
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.black,
                    statusBarIconBrightness: Brightness.light,
                  ),
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: Colors.deepPurple,
                  elevation: 0.0,
                  iconTheme: IconThemeData(
                    color: Colors.black,
                  ),
                ),
              ),
              home: screen,
            ),

          );
        },
    );
  }
}

