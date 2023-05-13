import 'package:flutter/material.dart';
import 'package:myapp/shared/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const ProfileMenuItem({
    Key? key,
    required this.iconUrl,
    required this.title,
		this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
			onTap: onTap,
			child: Container(
					margin: EdgeInsets.only(
						bottom: 30,
					),
					child: GestureDetector(
									child: Row(
										children: [
											Image.asset(
														iconUrl,
														width: 24,
													),
													const SizedBox(
														width: 18,
													),
													Text(
														title,
														style: blackTextStyle.copyWith(
															fontWeight: medium
														),
													),
										],
									),
								),
				),
		);
  }
}
