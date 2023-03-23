import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyLocaleController extends GetxController {

static Future init () async
{
  sharepreferences  = await SharedPreferences.getInstance();
}

static late SharedPreferences sharepreferences  ;
static bool onBoarding(){
  bool res = sharepreferences.getBool('on_boarding')??true;
  sharepreferences.setBool('on_boarding', false);
   return res;
}

static void changeLang(String codelang)
  {
    Locale locale = Locale(codelang);
    sharepreferences.setString("lang",codelang);
    Get.updateLocale(locale);
  }
static String getLang(){
    return sharepreferences.getString('lang')??'en';
  }
}