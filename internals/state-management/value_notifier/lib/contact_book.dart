import 'package:flutter/cupertino.dart';
import 'package:value_notifier/contact.dart';

class ContactBook extends ValueNotifier<List<Contact>> {
  ContactBook._() : super([]);

  static final ContactBook _shared = ContactBook._();

  factory ContactBook() => _shared;

  void add(Contact contact) {
    value.add(contact);
    notifyListeners();
  }

  void remove(Contact contact) {
    value.remove(contact);
    notifyListeners();
  }
}
