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
        colorScheme: ColorScheme.fromSeed(seedColor: bgColor),
        useMaterial3: true,
      ),
      scrollBehavior:
          ScrollConfiguration.of(context).copyWith(scrollbars: false),
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return const MobileHomePage(title: 'Home');
        } else {
          return const WebHomePage(title: 'Home');
        }
      }),
    );
  }
}

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key, required this.title});
  final String title;

  @override
  State<MobileHomePage> createState() => _MobileHomePage();
}

class _MobileHomePage extends State<MobileHomePage> {
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
                      prosesSearch(context, _controller.text);
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
            ImageSliderComponent(
              data: bookItems,
              isWeb: false,
            ),
            const WelcomeComponent(),
            TitleComponent(
                title: 'kategory',
                click: () {
                  showAlertSoon(context);
                }),
            const MenuComponent(),
            TitleComponent(title: 'promo', click: () {
              showAlertSoon(context);
            }),
            const PromoComponent(),
          ]),
        )));
  }
}

class WebHomePage extends StatefulWidget {
  const WebHomePage({super.key, required this.title});
  final String title;

  @override
  State<WebHomePage> createState() => _WebHomePage();
}

class _WebHomePage extends State<WebHomePage> {
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
                      prosesSearch(context, _controller.text);
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
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: ImageSliderComponent(
                  data: bookItems,
                  isWeb: true,
                )),
                Expanded(
                    child: Column(
                  children: [
                    TitleComponent(title: 'kategory', click: () {
                      showAlertSoon(context);
                    }),
                    const MenuComponent(),
                  ],
                ))
              ],
            ),
            const WelcomeComponent(),
            TitleComponent(title: 'promo', click: () {
              showAlertSoon(context);
            }),
            const PromoComponent(),
          ]),
        )));
  }
}
