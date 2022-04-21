import 'package:flutter/material.dart';
import 'package:value_notifier/contact.dart';
import 'package:value_notifier/contact_book.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameFieldController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameFieldController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('CANCEL'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ContactBook().add(Contact(nameFieldController.text));
                      Navigator.pop(context);
                    },
                    child: const Text('SAVE'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
