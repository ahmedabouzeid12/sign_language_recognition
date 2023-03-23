import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sign_language_recognition/screens/sign_language/web_view_camera_screen.dart';
import 'package:sign_language_recognition/screens/sign_language/web_view_gallery_screen.dart';

class SignLanguageScreen extends StatefulWidget {
  const SignLanguageScreen({Key? key }) : super(key: key);

  @override
  State<SignLanguageScreen> createState() => _SignLanguageScreenState();
}

class _SignLanguageScreenState extends State<SignLanguageScreen> {

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text("9".tr),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: ()
          {
            Navigator.pop(context,);
          }),
        ),
        body: Padding(
          padding:  EdgeInsets.all(20.0.sp),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child: SizedBox(height: 10.h,)),
                image != null ? Image.file(image!): Text("41".tr , style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600 , color: Colors.black54, ),),
                Expanded(child: SizedBox(height: 10.h,)),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              // color: Colors.blue,
                              child:  Text(
                                  "42".tr,
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15..sp,
                                  )
                              ),
                              onPressed: () {
                                //pickImage();
                               // launch("https://b07c453a1a0cff28.gradio.app/");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WebViewGallery(),
                                  ),
                                );
                              }
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
                              // color: Colors.blue,
                              child:  Text(
                                  "43".tr,
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15..sp
                                  )
                              ),
                              onPressed: () {
                                //pickImageC();
                               // launch("https://9d3c495cc0a2e6f4.gradio.app/");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WebViewCamera(),
                                  ),
                                );
                              }
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                  ],

                ),
                // Neumorphic(
                //   style: NeumorphicStyle(
                //     shape: NeumorphicShape.concave ,
                //     boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                //     depth: 10,
                //     intensity: 0.8,
                //     surfaceIntensity: 0.2,
                //     lightSource: LightSource.topLeft,
                //     color: Colors.deepPurple,),
                //   child: MaterialButton(
                //     // color: Colors.blue,
                //       child:  Text(
                //           "43".tr+' test',
                //           style: TextStyle(
                //               color: Colors.white, fontWeight: FontWeight.bold
                //           )
                //       ),
                //       onPressed: () {
                //         launch("https://3f481d5da92a0d91.gradio.app/");
                //       }
                //   ),
                // ),
                // SizedBox(height: 20,),
              ],
            ),
          ),
        ),


      // Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         height: 450,
      //         width: double.infinity,
      //         child : Image.asset('assets/images/asl.jpg',),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //         Text(
      //           "13".tr,
      //         style:TextStyle(
      //           fontSize: 30,
      //           fontWeight: FontWeight.bold,
      //         ),
      //         ),
      //       SizedBox(
      //         height: 15,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Neumorphic(
      //             style: NeumorphicStyle(
      //               shape: NeumorphicShape.concave ,
      //               boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
      //               depth: 10,
      //               intensity: 0.8,
      //               surfaceIntensity: 0.2,
      //               lightSource: LightSource.topLeft,
      //               color: Colors.white,),
      //             child: IconButton(
      //               onPressed: (){},
      //               icon: Icon(Icons.camera_alt,
      //                 color: Colors.black,
      //                 size: 45,
      //               ),
      //               iconSize: 70,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
