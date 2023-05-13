import 'package:flutter/material.dart';
import 'package:myapp/shared/theme.dart';
import 'package:myapp/ui/pages/data_package_page.dart';
import 'package:myapp/ui/pages/data_page.dart';
import 'package:myapp/ui/pages/data_succes_page.dart';
import 'package:myapp/ui/pages/home_page.dart';
import 'package:myapp/ui/pages/onboarding_page.dart';
import 'package:myapp/ui/pages/pin_page.dart';
import 'package:myapp/ui/pages/profile_edit_page.dart';
import 'package:myapp/ui/pages/profile_edit_pin.dart';
import 'package:myapp/ui/pages/profile_edit_succes.dart';
import 'package:myapp/ui/pages/profile_page.dart';
import 'package:myapp/ui/pages/sign_in_page.dart';
import 'package:myapp/ui/pages/sign_up_page.dart';
import 'package:myapp/ui/pages/sign_up_profile_upload_page.dart';
import 'package:myapp/ui/pages/sign_up_set_ktp.dart';
import 'package:myapp/ui/pages/sign_up_set_profile.dart';
import 'package:myapp/ui/pages/sign_up_succes.dart';
import 'package:myapp/ui/pages/splash_page.dart';
import 'package:myapp/ui/pages/topup_amount.dart';
import 'package:myapp/ui/pages/topup_page.dart';
import 'package:myapp/ui/pages/topup_succes.dart';
import 'package:myapp/ui/pages/transfer_amount.dart';
import 'package:myapp/ui/pages/transfer_page.dart';
import 'package:myapp/ui/pages/transfer_succes.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
			theme: ThemeData(
				scaffoldBackgroundColor: lightBackgroundColor,
				appBarTheme: AppBarTheme(
					backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
				titleTextStyle: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold) 
				),
			),
			debugShowCheckedModeBanner: false,
			routes: {
				'/': (context)=> const SplashPage(),
				'/onboarding': (context)=> const OnboardingPage(),
				'/sign-in': (context)=> const SignInPage(),
				'/sign-up': (context)=> const SignUpPage(),
				'/sign-up-set-profile': (context)=> const SignUpSetProfilePage(),
				'/sign-up-profile-upload': (context)=> const SignUpProfileUploadPage(),
				'/sign-up-set-ktp': (context)=> const SignUpSetKtpPage(),
				'/sign-up-succes': (context)=> const SignUpSucces(),
				'/home': (context)=> const HomePage(),
				'/profile': (context)=> const ProfilePage(),
				'/pin': (context)=> const PinPage(),
				'/profile-edit': (context)=> const ProfileEditPage(),
				'/profile-edit-pin': (context)=> const ProfileEditPinPage(),
				'/profile-edit-succes': (context)=> const ProfileEditSucces(),
				'/topup': (context)=> const TopupPage(),
				'/topup-amount': (context)=> const TopupAmountPage(),
				'/topup-succes': (context)=> const TopupSucces(),
				'/transfer': (context)=> const TransferPage(),
				'/transfer-amount': (context)=> const TransferAmountPage(),
				'/transfer-succes': (context)=> const TransferSucces(),
				'/data': (context)=> const DataPage(),
				'/data-package': (context)=> const DataPackagePage(),
				'/data-succes': (context)=> const DataSucces(),
				
				
			},
		);
  }
}
