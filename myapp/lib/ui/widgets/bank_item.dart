import 'package:flutter/material.dart';
import 'package:myapp/shared/theme.dart';

class BankItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String ket;
	final bool isSelected;

  const BankItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.ket,
		this.isSelected=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
			margin: EdgeInsets.only(
				bottom: 18,
			),
			padding: EdgeInsets.all(22),
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(20),
				color: whiteColor,
				border: Border.all(
					width: 2,
					color: isSelected ? blueColor : whiteColor,
				)
			),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: [
					Image.asset(
						imageUrl,
						height: 30,
					),
					Column(
						crossAxisAlignment: CrossAxisAlignment.end,
						children: [
							Text(
								title,
								style: blackTextStyle.copyWith(
									fontSize: 16,
									fontWeight: medium,
								),
							),
							const SizedBox(
								height: 2,
							),
							Text(
								ket,
								style: greyTextStyle.copyWith(
									fontSize: 12,
								),
							)
						],
					)
				],
			),
		);
  }
}
