import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sign_language_recognition/screens/sign_language/sign_language_screen.dart';
import 'package:sign_language_recognition/screens/voice_chat_screen.dart';
import '../login/login_screen.dart';
import 'chat_screen.dart';
import 'learn_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("4".tr),
        actions: [
          IconButton(
            icon: Icon(Icons.logout,color: Colors.white,),
            onPressed: ()
            {
              FirebaseAuth.instance.signOut().then((value){ Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );});
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.all(20.sp),
          child:  Center(
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Container(
                    width: 300.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                    ),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave ,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20.sp)),
                        depth: 10.sp,
                        intensity: 0.8.sp,
                        surfaceIntensity: 0.2.sp,
                        lightSource: LightSource.topLeft,
                        color: Colors.deepPurple,),
                      child: MaterialButton(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Icon(Icons.keyboard_voice,
                              color: Colors.white,
                              size: 50.sp,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "5".tr,
                              style: TextStyle(
                                fontSize: 30.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VoiceChatScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Container(
                    width: 300.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave ,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                        depth: 10.sp,
                        intensity: 0.8.sp,
                        surfaceIntensity: 0.2.sp,
                        lightSource: LightSource.topLeft,
                        color: Colors.deepPurple,),
                      child: MaterialButton(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Icon(Icons.chat,
                              color: Colors.white,
                              size: 50.sp,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "64".tr,
                              style: TextStyle(
                                fontSize: 30.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),//chat screen
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Container(
                    width: 300.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave ,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                        depth: 10.sp,
                        intensity: 0.8.sp,
                        surfaceIntensity: 0.2.sp,
                        lightSource: LightSource.topLeft,
                        color: Colors.deepPurple,),
                      child: MaterialButton(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Icon(Icons.camera_alt,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "6".tr,
                              style: TextStyle(
                                fontSize: 30.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignLanguageScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 50,
                // ),
                // Center(
                //   child: Container(
                //     width: 300,
                //     height: 150,
                //     decoration: BoxDecoration(
                //       color: Colors.deepPurple,
                //       borderRadius: BorderRadius.all(Radius.circular(20)),
                //     ),
                //     child: Neumorphic(
                //       style: NeumorphicStyle(
                //         shape: NeumorphicShape.concave ,
                //         boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                //         depth: 10,
                //         intensity: 0.8,
                //         surfaceIntensity: 0.2,
                //         lightSource: LightSource.topLeft,
                //         color: Colors.deepPurple,),
                //       child: MaterialButton(
                //         child: Column(
                //           children: [
                //             SizedBox(
                //               height: 20,
                //             ),
                //             Icon(Icons.picture_as_pdf_outlined,
                //               color: Colors.white,
                //               size: 50,
                //             ),
                //             SizedBox(
                //               height: 20,
                //             ),
                //             Text(
                //               "7".tr,
                //               style: TextStyle(
                //                 fontSize: 30.0,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.white,
                //               ),
                //             ),
                //           ],
                //         ),
                //         onPressed: ()
                //         {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) => LearnScreen(),
                //             ),
                //           );
                //         },
                //       ),
                //     ),
                //
                //   ),
                // ),
                // SizedBox(
                //   height: 0.h,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
    //   SingleChildScrollView(
    //   physics: BouncingScrollPhysics(),
    //   child: Padding(
    //     padding: const EdgeInsets.all(20.0),
    //     child: Column(
    //       children: [
    //         SizedBox(
    //           height: 10,
    //         ),
    //         Center(
    //           child: Container(
    //             width: 300,
    //             height: 150,
    //             decoration: BoxDecoration(
    //               color: Colors.deepPurple,
    //               borderRadius: BorderRadius.all(Radius.circular(20)),
    //             ),
    //             child: Neumorphic(
    //               style: NeumorphicStyle(
    //                 shape: NeumorphicShape.concave ,
    //                 boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
    //                 depth: 10,
    //                 intensity: 0.8,
    //                 surfaceIntensity: 0.2,
    //                 lightSource: LightSource.topLeft,
    //                 color: Colors.deepPurple,),
    //               child: MaterialButton(
    //                 child: Column(
    //                   children: [
    //                     SizedBox(
    //                       height: 20,
    //                     ),
    //                     Icon(Icons.keyboard_voice,
    //                       color: Colors.white,
    //                       size: 50,
    //                     ),
    //                     SizedBox(
    //                       height: 20,
    //                     ),
    //                     Text(
    //                       "5".tr,
    //                       style: TextStyle(
    //                         fontSize: 30.0,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 onPressed: ()
    //                 {
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                       builder: (context) => VoiceChatScreen(),
    //                     ),
    //                   );
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //         SizedBox(
    //           height: 50,
    //         ),
    //         Center(
    //           child: Container(
    //             width: 300,
    //             height: 150,
    //             decoration: BoxDecoration(
    //               color: Colors.deepPurple,
    //               borderRadius: BorderRadius.all(Radius.circular(20)),
    //             ),
    //             child: Neumorphic(
    //               style: NeumorphicStyle(
    //                 shape: NeumorphicShape.concave ,
    //                 boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
    //                 depth: 10,
    //                 intensity: 0.8,
    //                 surfaceIntensity: 0.2,
    //                 lightSource: LightSource.topLeft,
    //                 color: Colors.deepPurple,),
    //               child: MaterialButton(
    //                 child: Column(
    //                   children: [
    //                     SizedBox(
    //                       height: 20,
    //                     ),
    //                     Icon(Icons.chat_bubble,
    //                       color: Colors.white,
    //                       size: 50,
    //                     ),
    //                     SizedBox(
    //                       height: 20,
    //                     ),
    //                     Text(
    //                       "64".tr,
    //                       style: TextStyle(
    //                         fontSize: 30.0,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 onPressed: ()
    //                 {
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                       builder: (context) => ChatScreen(),
    //                     ),
    //                   );
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),//chat screen
    //         SizedBox(
    //           height: 50,
    //         ),
    //         Center(
    //           child: Container(
    //             width: 300,
    //             height: 150,
    //             decoration: BoxDecoration(
    //               color: Colors.deepPurple,
    //               borderRadius: BorderRadius.all(Radius.circular(20)),
    //             ),
    //             child: Neumorphic(
    //               style: NeumorphicStyle(
    //                 shape: NeumorphicShape.concave ,
    //                 boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
    //                 depth: 10,
    //                 intensity: 0.8,
    //                 surfaceIntensity: 0.2,
    //                 lightSource: LightSource.topLeft,
    //                 color: Colors.deepPurple,),
    //               child: MaterialButton(
    //                 child: Column(
    //                   children: [
    //                     SizedBox(
    //                       height: 20,
    //                     ),
    //                     Icon(Icons.videocam_sharp,
    //                       color: Colors.white,
    //                       size: 50,
    //                     ),
    //                     SizedBox(
    //                       height: 20,
    //                     ),
    //                     Text(
    //                       "6".tr,
    //                       style: TextStyle(
    //                         fontSize: 30.0,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 onPressed: ()
    //                 {
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                       builder: (context) => SignLanguageScreen(),
    //                     ),
    //                   );
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //         SizedBox(
    //           height: 50,
    //         ),
    //         Center(
    //           child: Container(
    //             width: 300,
    //             height: 150,
    //             decoration: BoxDecoration(
    //               color: Colors.deepPurple,
    //               borderRadius: BorderRadius.all(Radius.circular(20)),
    //             ),
    //             child: Neumorphic(
    //               style: NeumorphicStyle(
    //                 shape: NeumorphicShape.concave ,
    //                 boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
    //                 depth: 10,
    //                 intensity: 0.8,
    //                 surfaceIntensity: 0.2,
    //                 lightSource: LightSource.topLeft,
    //                 color: Colors.deepPurple,),
    //               child: MaterialButton(
    //                 child: Column(
    //                   children: [
    //                     SizedBox(
    //                       height: 20,
    //                     ),
    //                     Icon(Icons.picture_as_pdf_outlined,
    //                       color: Colors.white,
    //                       size: 50,
    //                     ),
    //                     SizedBox(
    //                       height: 20,
    //                     ),
    //                     Text(
    //                       "7".tr,
    //                       style: TextStyle(
    //                         fontSize: 30.0,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 onPressed: ()
    //                 {
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                       builder: (context) => LearnScreen(),
    //                     ),
    //                   );
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
