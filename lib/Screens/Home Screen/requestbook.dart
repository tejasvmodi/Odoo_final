import 'package:flutter/material.dart';

class Requestbook extends StatefulWidget {
  const Requestbook({super.key, required this.imagelink, required this.name, required this.authorname});
 final String imagelink;
 final String name ;
 final String authorname ;
  @override
  State<Requestbook> createState() => _RequestbookState();
}

class _RequestbookState extends State<Requestbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Request'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(23, 23),),),
      ),
    );
  }
}