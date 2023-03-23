import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';


class aboutUs extends StatelessWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('10'.tr,),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: ()
        {
          Navigator.pop(context,);
        }),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                '59'.tr ,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.sp,
                color: Colors.black87,
              ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Divider(
                indent: 50.sp,
                endIndent: 50.sp,
                color: Colors.grey,
                thickness: 1.sp,
              ),
              SizedBox(
                height: 10.sp,
              ),
              Material(
                color: Colors.deepPurple,
                elevation: 8.sp,
                borderRadius: BorderRadius.circular(28.sp),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap:()
                  {
                    launch("https:sciencedirect.com/science/article/pii/S2665917422000198");
                  },
                  child : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 80.h,
                        width: 80.w,
                        child: Lottie.network('https://assets10.lottiefiles.com/private_files/lf30_3nvqj06a.json'),
                      ),
                      // Ink.image(
                      //   image: NetworkImage(
                      //       'https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1'),
                      //   // AssetImage('assets/images/char.jpg'),
                      //   height: 60,
                      //   width: 80,
                      //   fit:  BoxFit.cover,
                      // ),
                      SizedBox(height: 6.h,),
                      Text(
                        " "+"6".tr+" ",
                        style: TextStyle(fontSize: 32.sp , color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            //child: Text('Sign language is an indispensable tool for people with speech disabilities to create a communication channel with their social environment. It is expressed through differences in gestures, body movements, and facial expressions. It is often uncommon for the general public to become familiar with sign language, which makes communication very difficult.(CNN). Thus, a digital translator that can convert sign language to text or voice in real time will be a very useful communication aid, so we decided to go ahead with hand gesture recognition. We propose this research so that we can improve accuracy using Convolution Neural Network (CNN).'),
          ),
        ),
      ),
    );
  }
}
