import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/bank_item.dart';
import '../widgets/buttons.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				title: Text(
					'Beli Data'
				),
			),
			body: ListView(
				padding: EdgeInsets.symmetric(horizontal: 24),
				children: [
					const SizedBox(
            height: 30,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance Rp 180.000.000',
                    style: greyTextStyle.copyWith(fontSize: 12),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
					Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          BankItem(
            title: 'Telkomsel',
            imageUrl: 'assets/img_provider_telkomsel.png',
            isSelected: true,
						ket: 'Available',
          ),
          BankItem(
            title: 'Indosat Ooredoo',
            imageUrl: 'assets/img_provider_indosat.png',
						ket: 'Available',
          ),
          BankItem(
            title: 'Singtel ID',
            imageUrl: 'assets/img_provider_singtel.png',
						ket: 'Available',
          ),
					const SizedBox(
            height: 120,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/data-package');
            },
          ),
          const SizedBox(
            height: 57,
          ),
				],
			),
		);
  }
}
