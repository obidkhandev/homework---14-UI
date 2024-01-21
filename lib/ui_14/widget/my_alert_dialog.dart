import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/verification.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Check your email"),
      backgroundColor: Colors.white,
      icon: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          color: kPrimaryColorUi14,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
      content: Text(
        "We have send password recovery instruction to your email",
        style: kSfUiSytle,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return VerificationScreen();
              },
            ),
          ),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
