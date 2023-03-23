import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:lottie/lottie.dart';
import 'package:sign_language_recognition/login/cubit/cubit.dart';
import 'package:sign_language_recognition/login/cubit/state.dart';
import '../register/forget_password.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    var formkey = GlobalKey<FormState>();

    return BlocProvider(
      create: (BuildContext context)
      {
        return LoginCubit();
      },
      child: BlocBuilder<LoginCubit ,LoginState>(
            builder: (context , state){
              LoginCubit model =LoginCubit.get(context);
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                ),
                body: Container(
                  // decoration: BoxDecoration(
                  //   gradient: LinearGradient(
                  //     colors: [
                  //       Colors.indigo,
                  //       Colors.white,
                  //     ],
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //   ),
                  // ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: formkey,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "19".tr,
                                style: TextStyle(
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "20".tr,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
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
                                height: 20.0,
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
                              Align(
                                alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: ()
                                    {

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ForgetPassword(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "23".tr,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                          ConditionalBuilder(
                            condition: state is! LoginLoadingState,
                            builder: (context) =>
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
                                        if(formkey.currentState!.validate())
                                        {
                                          LoginCubit.get(context).userLogin(email: emailcontroller.text, password: passwordcontroller.text , context: context);
                                        }
                                      },
                                      child: Text(
                                        "24".tr,
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
                                //CircularProgressIndicator(),

                                ),
                          ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  Text(
                                    "25".tr,
                                  ),
                                  TextButton(
                                    child: Text(
                                      "26".tr,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    onPressed: ()
                                    {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RegisterScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
