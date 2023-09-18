import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:ud_simbolon/header_component.dart';
import 'package:ud_simbolon/utils.dart';

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

  List<Image> images = [
    Image.asset('images/imageslider.png'),
    Image.asset('images/imageslider.png'),
    Image.asset('images/imageslider.png'),
    Image.asset('images/imageslider.png'),
    Image.asset('images/imageslider.png'),
  ];

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
        body: Column(children: [
          Container(
            color: bgColor,
            child: ImageSlideshow(
              width: double.infinity,
              height: 180,
              initialPage: 0,
              indicatorColor: cardColor,
              indicatorBackgroundColor: textColor,
              autoPlayInterval: 3000,
              isLoop: true,
              children: images,
            ),
          ),
        ]));
  }
}
