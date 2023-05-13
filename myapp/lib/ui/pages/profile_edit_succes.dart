import 'package:flutter/material.dart';
import 'package:myapp/ui/widgets/buttons.dart';

import '../../shared/theme.dart';

class ProfileEditSucces extends StatelessWidget {
  const ProfileEditSucces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update!',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Your data is safe with\n our system',
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: 183,
              title: 'My Profile',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/profile', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
