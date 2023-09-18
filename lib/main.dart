import 'package:flutter/material.dart';
import 'package:ud_simbolon/header_component.dart';
import 'package:ud_simbolon/image_slider_component.dart';
import 'package:ud_simbolon/menu_component.dart';
import 'package:ud_simbolon/model/item.dart';
import 'package:ud_simbolon/promo_component.dart';
import 'package:ud_simbolon/title_component.dart';
import 'package:ud_simbolon/utils.dart';
import 'package:ud_simbolon/welcome_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UD. SIMBOLON',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();

  bool _isNotEmpty = false;

  @override
  void initState() {
    super.initState();

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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          title: HeaderComponent(
            controller: _controller,
            isNotEmpty: _isNotEmpty,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
                child: IconButton(
                    onPressed: () {
                      showAlert(context, _controller.text);
                    },
                    icon: const Icon(
                      Icons.search,
                      color: cardColor,
                    )),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          color: bgColor,
          child: Column(children: [
            ImageSliderComponent(images: 
            items.map((item) => item.id).toList()),
            const WelcomeComponent(),
            TitleComponent(title: 'kategory', click: () {}),
            MenuComponent(
              items: [
                itemMenu('Alat tulis', Icons.edit_outlined, () {
                  showAlert(context, 'Alat tulis');
                }),
                itemMenu('Alat mandi', Icons.bathtub_outlined, () {
                  showAlert(context, 'Alat mandi');
                }),
                itemMenu('Bahan jahit', Icons.push_pin_outlined, () {
                  showAlert(context, 'Bahan jahit');
                }),
                itemMenu('Masker', Icons.masks_outlined, () {
                  showAlert(context, 'Masker');
                }),
                itemMenu('Rokok', Icons.smoking_rooms_outlined, () {
                  showAlert(context, 'Rokok');
                }),
                itemMenu('Alat cuci', Icons.wash_outlined, () {
                  showAlert(context, 'Alat cuci');
                }),
                itemMenu('Jajanan', Icons.fastfood_outlined, () {
                  showAlert(context, 'Jajanan');
                }),
                itemMenu('Kopi', Icons.coffee_outlined, () {
                  showAlert(context, 'Kopi');
                }),
              ],
            ),
            TitleComponent(title: 'promo', click: () {}),
            const PromoComponent(),
          ]),
        )));
  }
}
