import 'package:auto_route/auto_route.dart';
import 'package:beesiha_test/presentation/resources/app_colors.dart';
import 'package:beesiha_test/presentation/resources/app_text_styles.dart';
import 'package:beesiha_test/presentation/routes/router.gr.dart';
import 'package:beesiha_test/presentation/utils/ext1.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController tec=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPopExit,
      child: Material(
        color: AppColors.kc1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Spacer(),

              Text("Let's Roll",style: AppTextStyles.ts4.copyWith(
                fontSize: 32
              ),),

              const SizedBox(height: 32,),

              TextFormField(
                controller: tec,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  counterText: '',
                  hintText: "Phone number",
                  hintStyle: TextStyle(color: Colors.white,fontSize: 17),
                ),
              ),

              GestureDetector(
                onTap: () {

                  if(tec.text.length==9||tec.text.length==10) {
                    context.router.push(
                      ConfirmScreenRoute(
                        phoneNumber: tec.text.length==10?tec.text.substring(1):tec.text,
                      ),
                    );
                  } else {
                    Fluttertoast.showToast(
                        msg: "Inter a correct phone number",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }
                },
                child: Container(
                  color: Colors.white,
                  height: 62,
                  width: double.infinity,
                  child: Center(
                    child: Text('Next',style: AppTextStyles.ts3.copyWith(
                      color: Colors.black
                    ),),
                  ),
                ),
              ),

              const Spacer(),

            ],
          ),
        ),
      ),
    );
  }
}