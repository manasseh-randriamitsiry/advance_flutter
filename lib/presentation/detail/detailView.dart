import 'package:flutter/material.dart';
class Detailview extends StatefulWidget {
  const Detailview({super.key});

  @override
  State<Detailview> createState() => _DetailviewState();
}

class _DetailviewState extends State<Detailview> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text('detail view')
    );
  }
}
