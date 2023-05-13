import 'package:flutter/material.dart';
import 'package:myapp/shared/theme.dart';
import 'package:myapp/ui/widgets/buttons.dart';
import 'package:myapp/ui/widgets/forms.dart';
import 'package:myapp/ui/widgets/transfer_recent_user_item.dart';

import '../widgets/transfer_result_item.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
          	'Search',
          	style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          SizedBox(
            height: 14,
          ),
          CustomFormField(
          	title: 'by username',
          	isShowTitle: false,
          ),
          buildResult(),
          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget buildRecentsUser() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          TransferRecentUserItem(
            imageUrl: 'assets/img_friend1.png',
            name: 'Yonna jie',
            username: 'yoenna',
            isVerified: true,
          ),
          TransferRecentUserItem(
            imageUrl: 'assets/img_friend2.png',
            name: 'Jhon Hi',
            username: 'jhonn',
            isVerified: false,
          ),
          TransferRecentUserItem(
            imageUrl: 'assets/img_friend3.png',
            name: 'Rifqi Eka',
            username: 'ikieka',
            isVerified: false,
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: const [
              TransferResultItem(
                imageUrl: 'assets/img_friend1.png',
                name: 'Yonna jie',
                username: 'yoenna',
                isVerified: true,
              ),
              TransferResultItem(
                imageUrl: 'assets/img_friend2.png',
                name: 'Yonna jie',
                username: 'yoenna',
                isVerified: true,
                isSelected: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
