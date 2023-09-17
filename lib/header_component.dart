import 'package:flutter/material.dart';
import 'package:ud_simbolon/utils.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent({super.key});

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  final TextEditingController _controller = TextEditingController();

  bool _isNotEmpty = false;

  @override
  void initState() {
    super.initState();

    // Add a listener to the controller to check for text changes
    _controller.addListener(() {
      setState(() {
        _isNotEmpty = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 0, top: 0),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            suffixIcon: _isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _controller.clear();
                    },
                  )
                : null,
            hintText: 'mau cari apa ?',
            hintStyle: const TextStyle(
              color: textColor,
            ),
            contentPadding: const EdgeInsets.only(left: 10.0, bottom: 8.0),
            border: InputBorder.none,
          ),
          onSubmitted: (String value) {
            prosesSearch();
          },
        ),
      )),
    );
  }

  void prosesSearch() {
    if (_controller.text.isNotEmpty) {
      showCustomSnackBar(context, _controller.text);
    }
  }
}
