import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

// ignore: camel_case_types
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SnackBar Demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Layouts',
              style: TextStyle(color: Colors.black87),
            ),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black54),
            leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            actions: <Widget>[
              IconButton(icon: const Icon(Icons.cloud_queue), onPressed: () {})
            ],
          ),
          body: _buildBody(),
        ));
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _buildJournalHeaderImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildJournalEntry(),
                const Divider(),
                _buildJournalWeather(),
                const Divider(),
                _buildJournalTags(),
                const Divider(),
                _buildJournalFooterImages(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _buildJournalHeaderImage() {
  return const Image(
    image: AssetImage('images/Z.jpg'),
    fit: BoxFit.cover,
  );
}

Column _buildJournalEntry() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    // ignore: prefer_const_literals_to_create_immutables
    children: <Widget>[
      const Text(
        'My Birthday',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Divider(),
      const Text(
          'It’s going to be a great birthday. We are going out for dinner at my favorite place, then watch a movie after we go to the gelateria for ice cream and espresso.'),
    ],
  );
}

Row _buildJournalWeather() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          // ignore: prefer_const_constructors
          Icon(
            Icons.wb_sunny,
            color: Colors.orange,
          ),
        ],
      ),
      const SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Text(
                '81º Clear',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ],
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Text(
                '4500 San Alpho Drive, Dallas, TX United States',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _buildJournalTags() {
  return Wrap(
    spacing: 8.0,
    children: List.generate(7, (int index) {
      return Chip(
        label: Text(
          'Gift ${index + 1}',
          style: const TextStyle(fontSize: 10.0),
        ),
        avatar: Icon(
          Icons.card_giftcard,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: const BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _buildJournalFooterImages() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const CircleAvatar(
        backgroundImage: AssetImage('images/S.jpg'),
        radius: 40.0,
      ),
      const CircleAvatar(
        backgroundImage: AssetImage('images/A.jpg'),
        radius: 40.0,
      ),
      const CircleAvatar(
        backgroundImage: AssetImage('images/R.jpg'),
        radius: 40.0,
      ),
      SizedBox(
        width: 100.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Icon(Icons.cake),
            const Icon(Icons.star_border),
            const Icon(Icons.music_note),
            //Icon(Icons.movie),
          ],
        ),
      ),
    ],
  );
}
