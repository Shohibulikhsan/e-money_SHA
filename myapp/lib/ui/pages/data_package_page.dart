import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/data_package_item.dart';
import '../widgets/forms.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Data'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFormField(
            title: '+62',
            isShowTitle: false,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Select Package',
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
            children: [
              DataPackageItem(
                amount: 5,
                price: 20000,
                isSelected: true,
              ),
              DataPackageItem(
                amount: 1,
                price: 10000,
              ),
              DataPackageItem(
                amount: 10,
                price: 200000,
              ),
              DataPackageItem(
                amount: 7,
                price: 80000,
              ),
              SizedBox(
                height: 250,
              ),
              CustomFilledButton(
                title: 'Get Started',
                onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {

                Navigator.pushNamed(context, '/data-succes');
              }
            },
              ),
              const SizedBox(
                height: 57,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
