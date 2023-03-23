import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sign_language_recognition/login/login_screen.dart';
import 'package:sign_language_recognition/screens/credit_card_screen.dart';
import 'package:sign_language_recognition/screens/homePage_screen.dart';
import 'package:sign_language_recognition/screens/language_screen.dart';
import 'dart:math';
import 'package:sign_language_recognition/screens/team_members_screen.dart';
import 'about_us_screen.dart';
import 'learn_screen.dart';
import 'search_layout/search_screen.dart';

class ThreeDScreen extends StatefulWidget {
  const ThreeDScreen({Key? key}) : super(key: key);

  @override
  State<ThreeDScreen> createState() => _ThreeDScreenState();
}

class _ThreeDScreenState extends State<ThreeDScreen> {
  double value = 0;
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple[100]!,
                  Colors.deepPurple[700]!,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              // alignment: Alignment.topLeft,
              width: double.infinity,
              padding: EdgeInsets.all(8.0.sp),
              child: Directionality(
                  textDirection: TextDirection.ltr,
                child: Column(
                  children: [
                    DrawerHeader(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 22.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 40.0.sp,
                                      backgroundImage: NetworkImage(
                                        'https://media.istockphoto.com/vectors/businessman-showing-rock-hand-sign-vector-id534410386?k=20&m=534410386&s=612x612&w=0&h=k14kJ9lhnERqfzIwBE_1E8tj9vtOe9m3jcJocZ2AeTo=',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "9".tr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Expanded(
                      child: ListView(
                        children: [
                          // ListTile(
                          //   onTap: ()
                          //   {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => teamMembers(),
                          //       ),
                          //     );
                          //   },
                          //   leading: Icon(Icons.perm_contact_cal_sharp, color: Colors.white,),
                          //   title: Text("8".tr, style: TextStyle(color: Colors.white),),
                          // ),
                          ListTile(
                            onTap: ()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => aboutUs(),
                                ),
                              );
                            },
                            leading: Icon(Icons.question_mark_outlined, color: Colors.white,),
                            title: Text("10".tr, style: TextStyle(color: Colors.white),),
                          ),
                          ListTile(
                            onTap: ()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LanguageScreen(),
                                ),
                              );
                            },
                            leading: Icon(Icons.language_outlined, color: Colors.white,),
                            title: Text("11".tr, style: TextStyle(color: Colors.white),),
                          ),
                          ListTile(
                            onTap: ()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CreditCardPage(),
                                ),
                              );
                            },
                            leading: Icon(Icons.credit_card_outlined, color: Colors.white,),
                            title: Text("60".tr, style: TextStyle(color: Colors.white),),
                          ),
                          ListTile(
                            onTap: ()
                            {
                              FirebaseAuth.instance.signOut().then((value){ Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );});

                            },
                            leading: Icon(Icons.logout, color: Colors.white,),
                            title: Text("12".tr, style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0,end: value),
              duration: Duration(milliseconds: 500),
              // curve: Curves.easeInExpo,
              builder: (_,double val,__)
              {
                return(Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.0015)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi/6) * val),

                  //design home screen

                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Scaffold(
                          // backgroundColor: ,
                        //   appBar: AppBar(
                        //     title: Text("4".tr),
                        //     actions: [
                        //   IconButton(
                        //   icon: Icon(Icons.logout,color: Colors.white,),
                        //   onPressed: ()
                        //   {
                        //     Navigator.push( context,
                        //       MaterialPageRoute(
                        //         builder: (context) => SearchScreen(),),
                        //     );
                        //   },
                        // ),
                        // ],
                        //   ),
                          body: listOfWidget[currentIndex],
                          // SingleChildScrollView(
                          // physics: BouncingScrollPhysics(),
                          // child: Padding(
                          //   padding: const EdgeInsets.all(20.0),
                          //   child: Column(
                          //     children: [
                          //       SizedBox(
                          //         height: 10,
                          //       ),
                          //       Center(
                          //         child: Container(
                          //           width: 300,
                          //           height: 150,
                          //           decoration: BoxDecoration(
                          //             color: Colors.deepPurple,
                          //             borderRadius: BorderRadius.all(Radius.circular(20)),
                          //           ),
                          //           child: Neumorphic(
                          //             style: NeumorphicStyle(
                          //               shape: NeumorphicShape.concave ,
                          //               boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                          //               depth: 10,
                          //               intensity: 0.8,
                          //               surfaceIntensity: 0.2,
                          //               lightSource: LightSource.topLeft,
                          //               color: Colors.deepPurple,),
                          //             child: MaterialButton(
                          //               child: Column(
                          //                 children: [
                          //                   SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   Icon(Icons.keyboard_voice,
                          //                     color: Colors.white,
                          //                     size: 50,
                          //                   ),
                          //                   SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   Text(
                          //                     "5".tr,
                          //                     style: TextStyle(
                          //                       fontSize: 30.0,
                          //                       fontWeight: FontWeight.bold,
                          //                       color: Colors.white,
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //               onPressed: ()
                          //               {
                          //                 Navigator.push(
                          //                   context,
                          //                   MaterialPageRoute(
                          //                     builder: (context) => VoiceChatScreen(),
                          //                   ),
                          //                 );
                          //               },
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: 50,
                          //       ),
                          //       Center(
                          //         child: Container(
                          //           width: 300,
                          //           height: 150,
                          //           decoration: BoxDecoration(
                          //             color: Colors.deepPurple,
                          //             borderRadius: BorderRadius.all(Radius.circular(20)),
                          //           ),
                          //           child: Neumorphic(
                          //             style: NeumorphicStyle(
                          //               shape: NeumorphicShape.concave ,
                          //               boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                          //               depth: 10,
                          //               intensity: 0.8,
                          //               surfaceIntensity: 0.2,
                          //               lightSource: LightSource.topLeft,
                          //               color: Colors.deepPurple,),
                          //             child: MaterialButton(
                          //               child: Column(
                          //                 children: [
                          //                   SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   Icon(Icons.chat_bubble,
                          //                     color: Colors.white,
                          //                     size: 50,
                          //                   ),
                          //                   SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   Text(
                          //                     "64".tr,
                          //                     style: TextStyle(
                          //                       fontSize: 30.0,
                          //                       fontWeight: FontWeight.bold,
                          //                       color: Colors.white,
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //               onPressed: ()
                          //               {
                          //                 Navigator.push(
                          //                   context,
                          //                   MaterialPageRoute(
                          //                     builder: (context) => ChatScreen(),
                          //                   ),
                          //                 );
                          //               },
                          //             ),
                          //           ),
                          //         ),
                          //       ),//chat screen
                          //       SizedBox(
                          //         height: 50,
                          //       ),
                          //       Center(
                          //         child: Container(
                          //           width: 300,
                          //           height: 150,
                          //           decoration: BoxDecoration(
                          //             color: Colors.deepPurple,
                          //             borderRadius: BorderRadius.all(Radius.circular(20)),
                          //           ),
                          //           child: Neumorphic(
                          //             style: NeumorphicStyle(
                          //               shape: NeumorphicShape.concave ,
                          //               boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                          //               depth: 10,
                          //               intensity: 0.8,
                          //               surfaceIntensity: 0.2,
                          //               lightSource: LightSource.topLeft,
                          //               color: Colors.deepPurple,),
                          //             child: MaterialButton(
                          //               child: Column(
                          //                 children: [
                          //                   SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   Icon(Icons.videocam_sharp,
                          //                     color: Colors.white,
                          //                     size: 50,
                          //                   ),
                          //                   SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   Text(
                          //                     "6".tr,
                          //                     style: TextStyle(
                          //                       fontSize: 30.0,
                          //                       fontWeight: FontWeight.bold,
                          //                       color: Colors.white,
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //               onPressed: ()
                          //               {
                          //                 Navigator.push(
                          //                   context,
                          //                   MaterialPageRoute(
                          //                     builder: (context) => SignLanguageScreen(),
                          //                   ),
                          //                 );
                          //               },
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: 50,
                          //       ),
                          //       Center(
                          //         child: Container(
                          //           width: 300,
                          //           height: 150,
                          //           decoration: BoxDecoration(
                          //             color: Colors.deepPurple,
                          //             borderRadius: BorderRadius.all(Radius.circular(20)),
                          //           ),
                          //           child: Neumorphic(
                          //             style: NeumorphicStyle(
                          //               shape: NeumorphicShape.concave ,
                          //               boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                          //               depth: 10,
                          //               intensity: 0.8,
                          //               surfaceIntensity: 0.2,
                          //               lightSource: LightSource.topLeft,
                          //               color: Colors.deepPurple,),
                          //             child: MaterialButton(
                          //               child: Column(
                          //                 children: [
                          //                   SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   Icon(Icons.picture_as_pdf_outlined,
                          //                     color: Colors.white,
                          //                     size: 50,
                          //                   ),
                          //                   SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   Text(
                          //                     "7".tr,
                          //                     style: TextStyle(
                          //                       fontSize: 30.0,
                          //                       fontWeight: FontWeight.bold,
                          //                       color: Colors.white,
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //               onPressed: ()
                          //               {
                          //                 Navigator.push(
                          //                   context,
                          //                   MaterialPageRoute(
                          //                     builder: (context) => LearnScreen(),
                          //                   ),
                          //                 );
                          //               },
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          //   ),
                        ),
                        Container(
                          margin: EdgeInsets.all(displayWidth * .05),
                          height: displayWidth * .155,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = index;
                                  HapticFeedback.lightImpact();
                                });
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Stack(
                                children: [
                                  AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    width: index == currentIndex
                                        ? displayWidth * .32
                                        : displayWidth * .18,
                                    alignment: Alignment.center,
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      height: index == currentIndex ? displayWidth * .12 : 0,
                                      width: index == currentIndex ? displayWidth * .32 : 0,
                                      decoration: BoxDecoration(
                                        color: index == currentIndex
                                            ? Colors.blueAccent.withOpacity(.2)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    width: index == currentIndex
                                        ? displayWidth * .31
                                        : displayWidth * .18,
                                    alignment: Alignment.center,
                                    child: Stack(
                                      children: [
                                        Row(
                                          children: [
                                            AnimatedContainer(
                                              duration: Duration(seconds: 1),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              width:
                                              index == currentIndex ? displayWidth * .13 : 0,
                                            ),
                                            AnimatedOpacity(
                                              opacity: index == currentIndex ? 1 : 0,
                                              duration: Duration(seconds: 1),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child: Text(
                                                index == currentIndex
                                                    ? '${listOfStrings[index]}'.tr
                                                    : ''.tr,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            AnimatedContainer(
                                              duration: Duration(seconds: 1),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              width:
                                              index == currentIndex ? displayWidth * .03 : 20,
                                            ),
                                            Icon(
                                              listOfIcons[index],
                                              size: displayWidth * .076,
                                              color: index == currentIndex
                                                  ? Colors.white
                                                  : Colors.black26,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                       // buttomNav.BottomNavigationBar(),


                      ],
                    ),
                  ),
                ));
              }),
          GestureDetector(
            onHorizontalDragUpdate: (e)
            {
              if(e.delta.dx > 0){
                setState(() {
                  value = 1 ;
                });
              }else {
                setState(() {
                  value = 0;
                });
              }
            },
          ),
        ],
      ),
    );
  }
  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.airplay_outlined,
    Icons.search_outlined,
    Icons.person_rounded,
  ];

  List<String> listOfStrings = [
    "66",
    "65",
    "61",
    "8",
  ];
  List<Widget> listOfWidget = [

    HomePage(),
    LearnScreen(),
    SearchScreen(),
    teamMembers()
  ];
}
