import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sign_language_recognition/register/cubit/cubit.dart';
import 'package:sign_language_recognition/register/cubit/state.dart';
import 'package:url_launcher/url_launcher.dart';


class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var namecontroller = TextEditingController();
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    var repasswordcontroller = TextEditingController();
    var formkey = GlobalKey<FormState>();

    return BlocProvider(
      create: (BuildContext context){return RegisterCubit();},
      child: BlocBuilder<RegisterCubit,RegisterState>(

        builder: (context , state){
          RegisterCubit model =RegisterCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(icon: Icon(Icons.arrow_back_ios , color: Colors.black,),onPressed: ()
              {
                Navigator.pop(context,);
              }),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formkey,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "27".tr,
                        style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "28".tr,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        controller: namecontroller,
                        keyboardType: TextInputType.name,
                        onFieldSubmitted: (String value)
                        {
                          print(value);
                        },
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "33".tr;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
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
                          hintText:  "29".tr,
                          fillColor: Colors.grey[300]!,
                          filled: true,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value)
                        {
                          print(value);
                        },
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "34".tr;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
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
                          filled: true,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText:model.isPress ,

                        controller: passwordcontroller,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (String value)
                        {
                          print(value);
                        },
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "35".tr;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.key_off,
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
                          hintText: "22".tr,
                          fillColor: Colors.grey[300]!,
                          filled: true,

                          suffixIcon: IconButton(
                            onPressed: ()
                            {
                              model.flip();
                            },
                            icon: Icon(
                              model.isPress ? Icons.visibility_off : Icons.remove_red_eye,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: repasswordcontroller,
                        obscureText: model.isPress,
                        onFieldSubmitted: (String value)
                        {
                          print(value);
                        },
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "36".tr;
                          }
                          if(passwordcontroller.text != repasswordcontroller.text) {
                            return "37".tr;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "30".tr,
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.key_off,
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
                            fillColor: Colors.grey[300]!,
                            filled: true,
                          suffixIcon: IconButton(
                            onPressed: ()
                            {
                              model.flip();
                            },
                            icon: Icon(
                              model.isPress ? Icons.visibility_off : Icons.remove_red_eye,
                              color: Colors.deepPurple,
                            ),
                          ),

                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                  ConditionalBuilder(
                    condition: state is! RegisterLoadingState,
                    builder: (context) =>
                        Center(
                        child: Container(
                          width: 200,
                          height: 60,
                          // decoration: BoxDecoration(
                          //   color: Colors.black,
                          //   borderRadius: BorderRadius.all(Radius.circular(20)),
                          // ),
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave ,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                              depth: 10,
                              intensity: 0.8,
                              surfaceIntensity: 0.2,
                              lightSource: LightSource.topLeft,
                              color: Colors.deepPurple,),
                            child: MaterialButton(
                              onPressed: ()
                              {
                                if(formkey.currentState!.validate() )
                                {
                                  RegisterCubit.get(context).userRegister(name: namecontroller.text, email: emailcontroller.text, password: passwordcontroller.text ,repassword: repasswordcontroller.text, context: context);
                                }
                              },
                              child: Text(
                                "31".tr,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    fallback: (context) =>
                        Center(child: Lottie.asset('assets/json/loading.json' , height: 60, width: 200, ),
                       // CircularProgressIndicator(),
                        ),
                  ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: Text(
                          "32".tr,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 70,
                            onPressed: ()
                            {
                               launch("https://facebook.com");
                            },
                            icon: Container(
                              // height: 100,
                              // width: 100,
                              child: Lottie.asset('assets/json/facebook.json'),
                              //Image.asset('assets/images/facebook.png'),
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ) ,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: ()
                            {
                              launch("https://twitter.com");
                            },
                            iconSize: 70,
                            icon: Container(
                              // height: 100,
                              // width: 100,
                              child: Lottie.asset('assets/json/twitter.json'),
                              //Image.asset('assets/images/twitter.png'),
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ) ,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            iconSize: 60,
                            onPressed: ()
                            {
                              launch("https://gmail.com");
                            },
                            icon: Container(
                              // height: 100,
                              // width: 100,
                              child: Lottie.asset('assets/json/google.json'),
                              //Image.asset('assets/images/google.png'),
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ) ,

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}
