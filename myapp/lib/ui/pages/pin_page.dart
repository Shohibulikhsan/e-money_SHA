import 'package:flutter/material.dart';
import 'package:myapp/shared/theme.dart';
import 'package:myapp/ui/widgets/buttons.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');
  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text == '123123') {
      Navigator.pop(context, true);
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha Pin',
                style:
                    whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinController,
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: '*',
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                      fontSize: 36, fontWeight: medium, letterSpacing: 16),
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: greyColor,
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  InputButton(
                    title: '1',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  InputButton(
                    title: '2',
                    onTap: () {
                      addPin('2');
                    },
                  ),
                  InputButton(
                    title: '3',
                    onTap: () {
                      addPin('3');
                    },
                  ),
                  InputButton(
                    title: '4',
                    onTap: () {
                      addPin('4');
                    },
                  ),
                  InputButton(
                    title: '5',
                    onTap: () {
                      addPin('5');
                    },
                  ),
                  InputButton(
                    title: '6',
                    onTap: () {
                      addPin('6');
                    },
                  ),
                  InputButton(
                    title: '7',
                    onTap: () {
                      addPin('7');
                    },
                  ),
                  InputButton(
                    title: '8',
                    onTap: () {
                      addPin('8');
                    },
                  ),
                  InputButton(
                    title: '9',
                    onTap: () {
                      addPin('9');
                    },
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  InputButton(
                    title: '0',
                    onTap: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: numberBackgroundColor),
                      child: Center(
                          child: Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
