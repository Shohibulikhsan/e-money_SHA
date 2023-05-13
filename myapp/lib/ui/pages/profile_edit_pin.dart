import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				title: Text(
					'Edit Pin'
				),
			),
			body: ListView(
				padding: EdgeInsets.symmetric(
					horizontal: 20
				),
			  children: [
					const SizedBox(
						height: 30,
					),
			    Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
								const CustomFormField(
                  title: 'Old Pin',
									obscureText: true,
                ),
								const SizedBox(
                  height: 8,
                ),
                const CustomFormField(
                  title: 'New Pin',
									obscureText: true,
                ),
                
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/profile-edit-succes', (route) => false);
                  },
                ),
              ],
            ),
          ),
			  ],
			),
		);
  }
}
