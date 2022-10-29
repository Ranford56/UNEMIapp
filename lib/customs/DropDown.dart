import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List items = ['Item1', 'Item2', 'Item3', 'Item4'];
  String? selectedItem = 'Item1';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedItem,
      items: items.map((item) => DropdownMenuItem(
        value: item,
        child: Text(item))).toList(), 
      onChanged: (item) => setState(() => selectedItem = item as String?),
    );
  }
}