import 'package:flutter/material.dart';
import 'package:ud_simbolon/detail_item_screen.dart';
import 'package:ud_simbolon/list_item_barang_screen.dart';
import 'package:ud_simbolon/model/item.dart';
import 'package:ud_simbolon/my_navigation.dart';
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
          style: const TextStyle(fontFamily: fontTitleStr),
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
            hintStyle: const TextStyle(color: labelColor, fontSize: 14),
            contentPadding: const EdgeInsets.only(left: 10.0),
            border: InputBorder.none,
          ),
          onSubmitted: (String value) {
            prosesSearch(context, _controller.text);
          },
        ),
      ),
    );
  }
}

void prosesSearch(BuildContext context, String msg) {
  var alertEmpty = '000';
  var alertFailed = 'Maaf, barang yang anda cari sedang tidak ada.';

  try {
    if (msg.isEmpty) {
      throw alertEmpty;
    }

    var msgUpper = msg.toUpperCase();
    List<Item> listBrg = bookItems.fold<List<Item>>([], (result, brg) {
      var brgUpper = brg.name.toUpperCase();
      if (brgUpper.contains(msgUpper)) {
        result.add(brg);
      }
      return result;
    });

    if (listBrg.isEmpty) {
      throw alertFailed;
    }

    var msgWithQuotationMark = '\'$msg\'';
    goToListItemBarangScreen(
        context: context, title: msgWithQuotationMark, listItem: listBrg);
  } catch (e) {
    if (e.toString() != alertEmpty) {
      showAlert(context, alertFailed);
    }
  }
}