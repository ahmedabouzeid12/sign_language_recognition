import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CreditCardPage extends StatefulWidget {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  CreditCardPageState createState() => CreditCardPageState();
}

class CreditCardPageState extends State<CreditCardPage> {
  String cardNumber = '';
  String expiryDate= '';
  String cardHolderName = '';
  String cvvCode= '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card'),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
        onPressed: ()
        {
          Navigator.pop(context,);
        }),
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              obscureCardNumber: true,
              obscureCardCvv: true,
              onCreditCardWidgetChange: (CreditCardBrand ) {  },),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CreditCardForm(cardNumber: cardNumber,
                        expiryDate: expiryDate,
                        cardHolderName: cardHolderName,
                        cvvCode: cvvCode,
                        onCreditCardModelChange: onCreditCardModelChange,
                        themeColor: Colors.blue,
                        formKey: formKey,
                        cardNumberDecoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(12.sp),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple[200]!),
                              borderRadius: BorderRadius.circular(12.sp),
                            ),
                            labelText: 'Number',
                            hintText: 'xxxx xxxx xxxx xxxx'
                        ),
                        expiryDateDecoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(12.sp),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple[200]!),
                              borderRadius: BorderRadius.circular(12.sp),
                            ),
                            labelText: 'Expired Date',
                            hintText: 'xx/xx'
                        ),
                        cvvCodeDecoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(12.sp),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple[200]!),
                              borderRadius: BorderRadius.circular(12.sp),
                            ),
                            labelText: 'CVV',
                            hintText: 'xxx'
                        ),
                        cardHolderDecoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                            borderRadius: BorderRadius.circular(12.sp),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple[200]!),
                            borderRadius: BorderRadius.circular(12.sp),
                          ),
                          labelText: 'Card Holder',
                        ),
                      ),
                      SizedBox(height: 15.h,),
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
                          // style: ElevatedButton.styleFrom(
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(8.0),
                          //     ),
                          //     primary: Colors.deepPurple,
                          //
                          // ),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'validate',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'halter',
                                fontSize: 14.sp,
                                package: 'flutter_credit_card',
                              ),
                            ),
                          ),
                          onPressed: (){
                            if(formKey.currentState!.validate()){
                              print('valid');
                            }
                            else{
                              print('inValid');
                            }
                          },),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel){
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}