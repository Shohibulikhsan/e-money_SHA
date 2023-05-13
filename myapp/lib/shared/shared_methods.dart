import 'dart:ffi';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:myapp/shared/theme.dart';

void showCustomSnackbar(BuildContext context, String message) {
  Flushbar(
		message: message,
		flushbarPosition: FlushbarPosition.TOP,
		backgroundColor: redColor,
		duration: Duration(seconds: 2),
	);
}
