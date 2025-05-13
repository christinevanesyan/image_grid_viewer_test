import 'package:flutter/cupertino.dart';

class Dialogs {
  static void show(
    BuildContext context, {
    required String content,
  }) {
    showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: Text("Ошибка"),
        content: Text(content),
        actions: [
          CupertinoDialogAction(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("ОК"),
          ),
        ],
      ),
    );
  }
}
