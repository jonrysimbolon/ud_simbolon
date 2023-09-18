import 'package:flutter/material.dart';
import 'package:ud_simbolon/utils.dart';

class HeaderComponent extends StatelessWidget {
  final TextEditingController _controller;
  final bool _isNotEmpty;

  const HeaderComponent({
    Key? key,
    required TextEditingController controller,
    required bool isNotEmpty,
  })  : _controller = controller,
        _isNotEmpty = isNotEmpty,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: TextField(
          controller: _controller,
          style: titleTextStyle,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            isDense: true,
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
            contentPadding: const EdgeInsets.only(left: 10.0),
            border: InputBorder.none,
          ),
          onSubmitted: (String value) {
            prosesSearch(context);
          },
        ),
      ),
    );
  }

  void prosesSearch(BuildContext context) {
    if (_controller.text.isNotEmpty) {
      showCustomSnackBar(context, _controller.text);
    }
  }
}
