import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

   final emailcontroller = TextEditingController();
   //var formkey = GlobalKey<FormState>();

   @override
  void dispose() {
     emailcontroller.dispose();
    super.dispose();
  }

  Future passwordReset() async
  {
   try {
     await FirebaseAuth.instance.sendPasswordResetEmail(email: emailcontroller.text.trim());
     showDialog(context: context, builder: (context) {
       return AlertDialog(
         content: Text("57".tr,),
       );
     });
   } on FirebaseAuthException catch(e) {
     print(e);
     showDialog(context: context, builder: (context) {
       return AlertDialog(
         content: Text("34".tr,),
       );
     });
   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: ()
        {
          Navigator.pop(context,);
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "58".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (String value)
                {
                  print(value);
                },
                // validator: (value)
                // {
                //   if(value!.isEmpty)
                //   {
                //     return "34".tr;
                //   }
                //   return null;
                // },
                decoration:  InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple[200]!),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "21".tr,
                  fillColor: Colors.grey[300]!,
                  filled: true
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave ,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 10,
                    intensity: 0.8,
                    surfaceIntensity: 0.2,
                    lightSource: LightSource.topLeft,
                    color: Colors.deepPurple,
                  ),
                  child: MaterialButton(

                    onPressed: ()
                    {
                      // if(formkey.currentState!.validate()){
                      //
                      // }
                      passwordReset();
                    },
                    child: Text(
                      "56".tr,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
