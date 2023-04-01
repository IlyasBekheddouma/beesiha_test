import 'package:beesiha_test/domain/preferences/user_preferences.dart';
import 'package:beesiha_test/injection/injector.dart';
import 'package:beesiha_test/presentation/resources/app_colors.dart';
import 'package:beesiha_test/presentation/resources/app_text_styles.dart';
import 'package:beesiha_test/presentation/utils/ext1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  ConfirmScreen({super.key, required this.phoneNumber});
  final String phoneNumber;
  final TextEditingController otpPin=TextEditingController();
  String verID='';

  Future<void> verifyPhone() async {

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "+213$phoneNumber",
      timeout: const Duration(seconds: 20),
      verificationCompleted: (PhoneAuthCredential credential) {
        print("Auth Completed!");
      },
      verificationFailed: (FirebaseAuthException e) {
        print("Auth Failed!");
      },
      codeSent: (String verificationId, int? resendToken) {
        print("OTP Sent!");
        verID = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("Timeout!");
      },
    );
  }

  Future<void> verifyOTP() async {

    await FirebaseAuth.instance.signInWithCredential(
      PhoneAuthProvider.credential(
        verificationId: verID,
        smsCode: otpPin.text,
      ),
    ).whenComplete(() {
      injector.get<UserPreferences>().setIfLogged(true);
      goTo('/main');
    });
  }

  @override
  Widget build(BuildContext context) {
    verifyPhone();
    return Material(
      color: AppColors.kc1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Spacer(),

            Text("Enter the otp",style: AppTextStyles.ts4.copyWith(
                fontSize: 32
            ),),

            const SizedBox(height: 32,),

            TextFormField(
              controller: otpPin,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              maxLength: 6,
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                counterText: '',
                hintText: "******",
                hintStyle: TextStyle(color: Colors.white,fontSize: 17),
              ),
            ),

            GestureDetector(
              onTap: () {
                verifyOTP();
              },
              child: Container(
                color: Colors.white,
                height: 62,
                width: double.infinity,
                child: Center(
                  child: Text('Verify',style: AppTextStyles.ts3.copyWith(
                      color: Colors.black
                  ),),
                ),
              ),
            ),

            const Spacer(),

          ],
        ),
      ),
    );
  }
}