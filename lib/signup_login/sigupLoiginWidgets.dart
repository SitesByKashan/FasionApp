import '../utils/Appthemesetting.dart';
import 'package:flutter/material.dart';

class Passwordtextfield extends StatefulWidget {
  final String labeltext;
  Passwordtextfield({required this.labeltext});

  @override
  State<Passwordtextfield> createState() => _PasswordtextfieldState();
}

class _PasswordtextfieldState extends State<Passwordtextfield> {
  bool hidepassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Text(widget.labeltext),
          ],
        ),
        SizedBox(
          height: 55,
          child: TextField(
            obscureText: hidepassword,
            obscuringCharacter: '•',
            decoration: InputDecoration(
                suffix: (hidepassword)
                    ? IconButton(
                        onPressed: () {
                          hidepassword = false;
                          setState(() {});
                        },
                        icon: const Icon(Icons.visibility_outlined))
                    : IconButton(
                        onPressed: () {
                          hidepassword = true;
                          setState(() {});
                        },
                        icon: const Icon(Icons.visibility_off_outlined)),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: brownColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: '••••••••••',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: blackColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(50),
                )),
          ),
        ),
      ],
    );
  }
}

class Simpletextfield extends StatelessWidget {
  final String labeltext;
  final String hintlabel;
  const Simpletextfield(
    this.labeltext,
    this.hintlabel,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Text(labeltext),
          ],
        ),
        TextField(
          decoration: InputDecoration(
              hintText: hintlabel,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.brown,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(50),
              )),
        ),
      ],
    );
  }
}

Widget underLineTextButton(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      leadingDistribution: TextLeadingDistribution.even,
      color: brownColor,
      decoration: TextDecoration.underline,
      decorationColor: brownColor,
      decorationThickness: 2,
    ),
  );
}

Widget lineCenterText(String text) {
  return Row(
    children: [
      Expanded(
          child: const Divider(
        thickness: 1,
      )),
      Text('\t' + text + '\t'),
      Expanded(
          child: const Divider(
        thickness: 1,
      )),
    ],
  );
}

class OtherLoginOption extends StatelessWidget {
  const OtherLoginOption({super.key});

  Widget circleimagebutton(String imagepath, onpressed) {
    return InkWell(
      onTap: () {
        onpressed;
      },
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
          shape: BoxShape.circle,
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imagepath),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      circleimagebutton('assets/images/google.png', null),
      const SizedBox(
        width: 10,
      ),
      circleimagebutton('assets/images/apple.png', null),
      const SizedBox(
        width: 10,
      ),
      circleimagebutton('assets/images/facebook.png', null),
    ]);
  }
}
