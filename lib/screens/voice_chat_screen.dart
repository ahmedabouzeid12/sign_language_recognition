// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:get/get.dart';
//
// class VoiceChatScreen extends StatelessWidget {
//   const VoiceChatScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "5".tr,
//         ),
//         leading: IconButton(icon: Icon(Icons.arrow_back_ios ,color: Colors.white,),onPressed: ()
//         {
//           Navigator.pop(context,);
//         }),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     "17".tr,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                   ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Text(
//                   "18".tr,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 440,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Neumorphic(
//                   style: NeumorphicStyle(
//                     shape: NeumorphicShape.concave ,
//                     boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
//                     depth: 10,
//                     intensity: 0.8,
//                     surfaceIntensity: 0.2,
//                     lightSource: LightSource.topLeft,
//                     color: Colors.white,),
//                   child: IconButton(
//                       onPressed: ()
//                       {
//
//                       },
//                       icon: Icon(Icons.keyboard_voice,
//                         color: Colors.deepPurple,
//                         size: 45,),
//                     iconSize: 50,
//                   ),
//                 ),
//                 // SizedBox(
//                 //   width: 100,
//                 // ),
//                 // Neumorphic(
//                 //   style: NeumorphicStyle(
//                 //     shape: NeumorphicShape.concave ,
//                 //     boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
//                 //     depth: 10,
//                 //     intensity: 0.8,
//                 //     surfaceIntensity: 0.2,
//                 //     lightSource: LightSource.topLeft,
//                 //     color: Colors.white,),
//                 //   child: IconButton(
//                 //     onPressed: ()
//                 //     {
//                 //
//                 //     },
//                 //     icon: Icon(Icons.chat,
//                 //       color: Colors.deepPurple,
//                 //       size: 40,
//                 //     ),
//                 //     iconSize: 50,
//                 //   ),
//                 // ),
//                 // SizedBox(
//                 //   width: 10,
//                 // ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';


class VoiceChatScreen extends StatefulWidget {
  const VoiceChatScreen({Key? key}) : super(key: key);

  @override
  _VoiceChatScreenState createState() => _VoiceChatScreenState();
}

class _VoiceChatScreenState extends State<VoiceChatScreen> {

  SpeechToText speechToText = SpeechToText();
  var text = "63".tr;
  var isListening = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTapDown: (details) async {
          if(!isListening){
            var available = await speechToText.initialize();
            if(available){
              setState(() {
                isListening = true;
                speechToText.listen(
                  onResult: (result){
                    setState(() {
                      text = result.recognizedWords;
                    });
                  },
                );
              });
            }
          }
        },
        onTapUp: (details){
          setState(() {
            isListening = false;
          });
          speechToText.stop();
        },
        child: AvatarGlow(
          endRadius: 75.0.sp,
          animate: isListening,
          duration: Duration(milliseconds: 2000),
          glowColor: Colors.deepPurple,
          repeat: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          showTwoGlows: true,
          child:  CircleAvatar(
            backgroundColor: Colors.deepPurple,
            radius: 35.sp,
            child: Icon(isListening ?  Icons.mic : Icons.mic_none, color: Colors.white,),

          ),
        ),
      ),
    appBar: AppBar(
        title: Text(
          "5".tr,
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios ,color: Colors.white,),onPressed: ()
        {
          Navigator.pop(context,);
        }),
      ),
      body: Container(
        alignment: Alignment.center,
        padding:  EdgeInsets.symmetric(horizontal: 24.sp , vertical: 16.sp),
        margin:  EdgeInsets.only(bottom: 150.sp),
        child: Text(
          text,
          style:  TextStyle(fontSize: 20.sp , color: Colors.black54 , fontWeight: FontWeight.w600 ,),
        ),
      ),
    );
  }
}

