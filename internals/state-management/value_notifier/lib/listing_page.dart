import 'package:flutter/material.dart';

import 'contact.dart';
import 'contact_book.dart';

class ListingPage extends StatelessWidget {
  const ListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var contactBook = ContactBook();

    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: contactBook,
        builder: (context, value, child) {
          final contacts = value as List<Contact>;
          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];
              return Dismissible(
                key: ValueKey(contact),
                child: ListTile(
                  title: Text(contact.name),
                ),
                onDismissed: (direction) {
                  contacts.remove(contact);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed('/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
