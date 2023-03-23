import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "7".tr,
        ),
        // actions: [
        //   IconButton(onPressed: (){},
        //     icon: Icon(Icons.logout),),
        // ],
        // leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: ()
        // {
        //   Navigator.pop(context,);
        // }),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "14".tr,
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                child: Image.asset("53".tr,),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "15".tr,
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                child: Image.asset("54".tr,),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "16".tr,
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                child: Image.asset("55".tr,),
              ),
              SizedBox(height: 60.h,),
            ],
          ),
        ),
      ),
    );
  }
}
