import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class teamMembers extends StatelessWidget {
  const teamMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("46".tr,),
        // leading: IconButton(
        //     icon:
        //     Icon(
        //       Icons.arrow_back_ios,color: Colors.white,
        //     ),
        //     onPressed: ()
        // {
        //   Navigator.pop(context,);
        // }),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.all(20.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "47".tr,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  elevation: 8.sp,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap:()
                    {
                      launch("");
                    },
                    child : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: NetworkImage(
                              'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
                          // AssetImage('assets/images/char.jpg'),
                          height: 300.h,
                          width: 300.w,
                          fit:  BoxFit.cover,
                        ),
                        SizedBox(height: 6,),
                        Text(
                          'Dr/ Safi',
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                        Text(
                          "48".tr,
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),

              ),
              SizedBox(height: 20.h,),
              Text(
                "49".tr,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  elevation: 8.sp,
                  borderRadius: BorderRadius.circular(28.sp),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap:()
                    {
                      launch("https://linkedin.com/in/ayamagdy80888/");
                    },
                    child : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage('assets/images/5.jpg'),
                          // NetworkImage(
                          //      'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/264014526_1350058495452073_5845815393737621300_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_ohc=wC2hHtVcRNgAX_34UW0&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDNtq9qvNlSSyAkyxzqvEriaf3SrXcjSiPIWVhI8WuhOw&oe=6362EEB8'),

                          height: 300.h,
                          width: 300.w,
                          fit:  BoxFit.cover,
                        ),
                        SizedBox(height: 6.h,),
                        Text(
                          'Eng/ Aya',
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                        Text(
                          "50".tr,
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),

              ),
              SizedBox(height: 20.h,),
              Text(
                "51".tr,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  elevation: 8.sp,
                  borderRadius: BorderRadius.circular(28.sp),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                  onTap:()
                  {
                    launch("https:linkedin.com/in/ahmed-ali-anwer-el-nory-510b5a210/");
                  },
                    child : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage('assets/images/1.jpg'),
                          // NetworkImage(
                          // 'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/248232795_1279906485788453_6787729741627161283_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_ohc=vkuNA_GuhFYAX-telJl&tn=c-b4IfBlyeuHHf4T&_nc_ht=scontent.fcai20-6.fna&oh=00_AfCB4MHfukXMNBW8RhomXRZduf9m63kXRPkKZm_xAc1OQA&oe=6366F72D'),
                         // AssetImage('assets/images/char.jpg'),
                          height: 300.h,
                          width: 300.w,
                          fit:  BoxFit.cover,
                        ),
                        SizedBox(height: 6.h,),
                        Text(
                          'EL-NORY',
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                        Text(
                          "44".tr,
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h,),
              Text(
                "52".tr,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(28.sp),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap:()
                    {
                     // launch("");
                    },
                    child : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage('assets/images/2.jpg'),
                          // NetworkImage(
                          //     'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/293867878_2296392107178780_2568265910358621818_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=qj3N3NrWQ1IAX-rdsA3&_nc_ht=scontent.fcai20-6.fna&oh=00_AfC5SA9oKzO0dPz2fLzU9BtOfZwEhoDFmb1Qunal2WQuLw&oe=63661C66'),
                          // AssetImage('assets/images/char.jpg'),
                          height: 300.h,
                          width: 300.w,
                          fit:  BoxFit.cover,
                        ),
                        SizedBox(height: 6.h,),
                        Text(
                          'Tadrous',
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                        Text(
                          "44".tr,
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  elevation: 8.sp,
                  borderRadius: BorderRadius.circular(28.sp),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap:()
                    {
                      launch("https://linkedin.com/in/mohamedkhalifa11/");
                    },
                    child : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage('assets/images/4.jpg'),
                          // NetworkImage(
                          //     'https://media-exp1.licdn.com/dms/image/D4D03AQFEMVbGIWUAIg/profile-displayphoto-shrink_800_800/0/1667175400842?e=1672876800&v=beta&t=2NcawNXqZ32gN18OozDVO_XqCqPhSJUjBQYB2wT1LAs'),
                          // AssetImage('assets/images/char.jpg'),
                          height: 300.h,
                          width: 300.w,
                          fit:  BoxFit.cover,
                        ),
                        SizedBox(height: 6.h,),
                        Text(
                          'Mohamed Khalifa',
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                        Text(
                          "44".tr,
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  elevation: 8.sp,
                  borderRadius: BorderRadius.circular(28.sp),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap:()
                    {
                      launch("https:linkedin.com/in/esraa-abdelsamee-b819b0235/");
                    },
                    child : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image:
                          // AssetImage('assets/images/'),
                          NetworkImage(
                              'https://instagram.fcai20-6.fna.fbcdn.net/v/t51.2885-19/328944750_533180525306451_405774118664631281_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fcai20-6.fna.fbcdn.net&_nc_cat=103&_nc_ohc=WEbWxfJX4yIAX_nKT9q&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAWwnlAB2PMYL8ER0iWt8a-xwtjpmtSQgAZsChkQ6px0g&oe=63E4A8D1&_nc_sid=8fd12bahmah'),

                          height: 300.h,
                          width: 300.w,
                          fit:  BoxFit.cover,
                        ),
                        SizedBox(height: 6.h,),
                        Text(
                          'Esraa',
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                        Text(
                          "44".tr,
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  elevation: 8.sp,
                  borderRadius: BorderRadius.circular(28.sp),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap:()
                    {
                      launch("https:linkedin.com/in/lamia-mohye-7809aa232/");
                    },
                    child : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage('assets/images/6.jpg'),
                          // NetworkImage(
                          //     'https://pbs.twimg.com/profile_images/1584250021372989442/asGqKMFT_400x400.jpg'),

                          height: 300.h,
                          width: 300.w,
                          fit:  BoxFit.cover,
                        ),
                        SizedBox(height: 6.h,),
                        Text(
                          'Lamia Mohye',
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                        Text(
                          "44".tr,
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  elevation: 8.sp,
                  borderRadius: BorderRadius.circular(28.sp),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap:()
                    {
                      launch("https:linkedin.com/in/ahmed-abozaid-130945250/");
                    },
                    child : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage('assets/images/7.jpg'),
                          // NetworkImage(
                          //     'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/276118042_1580384442341857_1348028610284623230_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=y0S2XZC8leQAX-eTMeM&_nc_ht=scontent.fcai20-6.fna&oh=00_AfALjS3lbYFK-H4oZAPEE9LaFq41cs8AWzELmdSABRxx0w&oe=63662263'),
                          // AssetImage('assets/images/char.jpg'),
                          height: 300.h,
                          width: 300.w,
                          fit:  BoxFit.cover,
                        ),
                        SizedBox(height: 6.h,),
                        Text(
                          'Abouzeid',
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                        Text(
                          "45".tr,
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  elevation: 8.sp,
                  borderRadius: BorderRadius.circular(28.sp),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap:()
                    {
                      // launch("");
                    },
                    child : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage('assets/images/3.jpg'),
                          // NetworkImage(
                          //     'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/156262463_1725896994269335_2698090757379459471_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=ZmKi5nN0GmsAX_jWLYI&_nc_ht=scontent.fcai20-6.fna&oh=00_AT-YbO7lsBaVMyb7oyXW0AuPTx0b5-7fXAjS3iJ-qqEfxQ&oe=637B7D5D'),
                          // AssetImage('assets/images/char.jpg'),
                          height: 300.h,
                          width: 300.w,
                          fit:  BoxFit.cover,
                        ),
                        SizedBox(height: 6.h,),
                        Text(
                          'Abdelrahman',
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                        Text(
                          "45".tr,
                          style: TextStyle(fontSize: 28.sp , color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Material(
              //       color: Colors.blue,
              //       elevation: 8,
              //       borderRadius: BorderRadius.circular(28),
              //       clipBehavior: Clip.antiAliasWithSaveLayer,
              //       child: InkWell(
              //         splashColor: Colors.black26,
              //         onTap:()
              //         {
              //
              //         },
              //         child : Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Ink.image(
              //               image: NetworkImage(
              //                   'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/293867878_2296392107178780_2568265910358621818_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=CLRz3gZOezYAX-38KON&_nc_ht=scontent.fcai20-6.fna&oh=00_AfCP9a5LD5BEpiNoozLadRBGrIt1LVnMzyT6QGpEqrNaVg&oe=63602DA6'),
              //               // AssetImage('assets/images/char.jpg'),
              //               height: 150,
              //               width: 150,
              //               fit:  BoxFit.cover,
              //             ),
              //             SizedBox(height: 6,),
              //             Text(
              //               'Tadrous \n       AI',
              //               style: TextStyle(fontSize: 26 , color: Colors.white),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 10.0,),
              //     Material(
              //       color: Colors.blue,
              //       elevation: 8,
              //       borderRadius: BorderRadius.circular(28),
              //       clipBehavior: Clip.antiAliasWithSaveLayer,
              //       child: InkWell(
              //         splashColor: Colors.black26,
              //         onTap:()
              //         {
              //           launch("https:linkedin.com/in/ahmed-abozaid-130945250/");
              //         },
              //         child : Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Ink.image(
              //               image: NetworkImage(
              //                   'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/276118042_1580384442341857_1348028610284623230_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=j71_0EHDOpcAX9Je_A2&_nc_ht=scontent.fcai20-6.fna&oh=00_AfAR22U6GPy6BUwy96AItdOSMGQeBZddRvVoSYoLV_4UiA&oe=636033A3'),
              //               // AssetImage('assets/images/char.jpg'),
              //               height: 150,
              //               width: 150,
              //               fit:  BoxFit.cover,
              //             ),
              //             SizedBox(height: 6,),
              //             Text(
              //               'Abouzeid',
              //               style: TextStyle(fontSize: 30 , color: Colors.white),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Material(
              //       color: Colors.blue,
              //       elevation: 8,
              //       borderRadius: BorderRadius.circular(28),
              //       clipBehavior: Clip.antiAliasWithSaveLayer,
              //       child: InkWell(
              //         splashColor: Colors.black26,
              //         onTap:()
              //         {
              //           launch('https://linkedin.com/in/mohamedkhalifa11/');
              //         },
              //         child : Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Ink.image(
              //               image: NetworkImage(
              //                   'https://media-exp1.licdn.com/dms/image/C4D03AQFB5XeX0pw8nA/profile-displayphoto-shrink_800_800/0/1662979419206?e=1672272000&v=beta&t=tHG9MUfUxisn7REI49siNzpNfIJOoWPrqI2HP9vuRnY'),
              //               // AssetImage('assets/images/char.jpg'),
              //               height: 150,
              //               width: 150,
              //               fit:  BoxFit.cover,
              //             ),
              //             SizedBox(height: 6,),
              //             Text(
              //               'Mo. Khalifa',
              //               style: TextStyle(fontSize: 26 , color: Colors.white),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 10.0,),
              //     Material(
              //       color: Colors.blue,
              //       elevation: 8,
              //       borderRadius: BorderRadius.circular(28),
              //       clipBehavior: Clip.antiAliasWithSaveLayer,
              //       child: InkWell(
              //         splashColor: Colors.black26,
              //         onTap:(){},
              //         child : Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Ink.image(
              //               image: NetworkImage(
              //                   'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/156262463_1725896994269335_2698090757379459471_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=ZmKi5nN0GmsAX_jWLYI&_nc_ht=scontent.fcai20-6.fna&oh=00_AT-YbO7lsBaVMyb7oyXW0AuPTx0b5-7fXAjS3iJ-qqEfxQ&oe=637B7D5D'),
              //               // AssetImage('assets/images/char.jpg'),
              //               height: 150,
              //               width: 150,
              //               fit:  BoxFit.cover,
              //             ),
              //             SizedBox(height: 6,),
              //             Text(
              //               'Abdelrahman',
              //               style: TextStyle(fontSize: 22 , color: Colors.white),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Material(
              //       color: Colors.blue,
              //       elevation: 8,
              //       borderRadius: BorderRadius.circular(28),
              //       clipBehavior: Clip.antiAliasWithSaveLayer,
              //       child: InkWell(
              //         splashColor: Colors.black26,
              //         onTap:()
              //         {
              //           launch("https:linkedin.com/in/esraa-abdelsamee-b819b0235/");
              //         },
              //         child : Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Ink.image(
              //               image: NetworkImage(
              //                   'https://instagram.fcai20-6.fna.fbcdn.net/v/t51.2885-19/293970915_169746208884233_8278617971851301094_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fcai20-6.fna.fbcdn.net&_nc_cat=105&_nc_ohc=Z7FZTuCgpbEAX-4AiDC&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBaLhstWl7gon6QRaVnjc9-ajCyCzaBRkxRrofzg_vW6Q&oe=635FF486&_nc_sid=8fd12b'),
              //               // AssetImage('assets/images/char.jpg'),
              //               height: 150,
              //               width: 150,
              //               fit:  BoxFit.cover,
              //             ),
              //             SizedBox(height: 6,),
              //             Text(
              //               'Esraa',
              //               style: TextStyle(fontSize: 32 , color: Colors.white),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 10.0,),
              //     Material(
              //       color: Colors.blue,
              //       elevation: 8,
              //       borderRadius: BorderRadius.circular(28),
              //       clipBehavior: Clip.antiAliasWithSaveLayer,
              //       child: InkWell(
              //         splashColor: Colors.black26,
              //         onTap:()
              //         {
              //           launch('https:linkedin.com/in/lamia-mohye-7809aa232/');
              //         },
              //         child : Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Ink.image(
              //               image: NetworkImage(
              //                   'https://pbs.twimg.com/profile_images/1584250021372989442/asGqKMFT_400x400.jpg'),
              //               // AssetImage('assets/images/char.jpg'),
              //               height: 150,
              //               width: 150,
              //               fit:  BoxFit.cover,
              //             ),
              //             SizedBox(height: 6,),
              //             Text(
              //               'L. Mohye',
              //               style: TextStyle(fontSize: 32 , color: Colors.white),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 70.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
