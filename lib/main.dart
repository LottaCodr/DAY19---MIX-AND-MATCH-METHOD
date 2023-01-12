import 'package:flutter/material.dart';
import 'package:learnstate/tabbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Tapbox Demo'),
        ),
        body: const Center(
          child: TapboxA(),
        ),
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavourite = true;
  int _favouriteCount = 41;

  void _toggleFavourite() {
    // a state method to be called when the button is pressed
    setState(() {
      if (_isFavourite) {
        _favouriteCount -= 1;
        _isFavourite = false;
      } else {
        _favouriteCount += 1;
        _isFavourite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
              onPressed: _toggleFavourite,
              icon: (_isFavourite
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_border)),
              color: Colors.red[500]),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favouriteCount'),
          ),
        )
      ],
    );
  }
}
