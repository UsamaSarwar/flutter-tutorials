import 'package:flutter/material.dart';

class ContactDetails extends StatefulWidget {
  final String name;
  final String number;

  const ContactDetails({super.key, required this.name, required this.number});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(widget.name),
        centerTitle: true,
      ),
      body:  Center(
        child: Text(widget.number),
      ),
    );
  }
}
