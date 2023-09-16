import 'package:flutter/material.dart';

class HeaderComponent extends StatefulWidget {


  const HeaderComponent({super.key});

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'mau cari apa ?',
            ),
            onChanged: (String value) {
              setState(() {
                _searchText = value;
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, $_searchText'),
                      );
                    });
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}
