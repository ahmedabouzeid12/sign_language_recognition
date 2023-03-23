import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../locale/locale_controller.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  // var _itemImage = [
  //   Image.network("https://i.picsum.photos/id/203/200/300.jpg?hmac=mJaqsySlyEjr8fLBHytyVCUyqlfPSxqXePXEIhZZi_Y"),
  //       Image.network("https://i.picsum.photos/id/14/200/200.jpg?hmac=bwQwH7-0RPCqUVkFzd3hFhc6yDfC6_e7vgaKXZ7vFOA"),
  //       Image.network("https://picsum.photos/id/870/200/300?grayscale&blur=2")];
  //
  // int index =0;

  // tmpFunction() {
  //   Container(
  //     child: _itemImage[index],
  //     width: 500,
  //   );
  // }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "1".tr,
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: ()
        {
          Navigator.pop(context,);
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "38".tr,
              style: TextStyle(
              color: Colors.grey,
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 150.h,
            ),
            SingleChildScrollView(
              child: Center(
                child: Row(
                  children: [

                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave ,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                        depth: 10.sp,
                        intensity: 0.8.sp,
                        surfaceIntensity: 0.2.sp,
                        lightSource: LightSource.topLeft,
                        color: Colors.deepPurple,
                      ),
                      child: MaterialButton(
                        onPressed: ()
                        {
                          MyLocaleController.changeLang("en");
                        },
                        color: Colors.deepPurple,
                        child:  Text("${"2".tr} 🇬🇧",style: TextStyle(fontSize: 12.5.sp,color: Colors.white),
                         ),
                       ),
                     ),
                     SizedBox(
                      width: 25.w,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave ,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                        depth: 10.sp,
                        intensity: 0.8.sp,
                        surfaceIntensity: 0.2.sp,
                        lightSource: LightSource.topLeft,
                        color: Colors.deepPurple,),
                      child: MaterialButton(
                        onPressed: ()
                        {
                          MyLocaleController.changeLang("ar");
                         // setState(() { index = 0;});
                        },
                        color: Colors.deepPurple,
                        child:  Text("${"3".tr} 🇪🇬",style: TextStyle(fontSize: 12.5.sp,color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
              SizedBox(
              height: 10.h,
              ),
                SingleChildScrollView(
                  child: Center(
                    child: Row(
                      children: [

                       Neumorphic(
                         style: NeumorphicStyle(
                         shape: NeumorphicShape.concave ,
                         boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                         depth: 10.sp,
                        intensity: 0.8.sp,
                       surfaceIntensity: 0.2.sp,
                       lightSource: LightSource.topLeft,
                       color: Colors.deepPurple,),
                      child: MaterialButton(
                       onPressed: ()
                       {
                         MyLocaleController.changeLang("hi");
                      //   setState(() { index = 1;});
                        },
                           color: Colors.deepPurple,
                        child:  Text("${"39".tr} 🇳🇪",style: TextStyle(fontSize: 12.5.sp,color: Colors.white),),
                      ),
                       ),
                         SizedBox(
                          width: 30.w,
                        ),
                        Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave ,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                            depth: 10.sp,
                            intensity: 0.8.sp,
                            surfaceIntensity: 0.2.sp,
                            lightSource: LightSource.topLeft,
                            color: Colors.deepPurple,),
                          child: MaterialButton(
                            onPressed: ()
                            {
                              MyLocaleController.changeLang("fa");
                           //   setState(() { index = 2;});
                            },
                            color: Colors.deepPurple,
                            child:  Text("${"40".tr} 🇮🇷",style: TextStyle(fontSize: 12.5.sp,color: Colors.white),),
                          ),
                        ),
                   ],
                 ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
