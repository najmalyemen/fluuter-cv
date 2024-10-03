import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CV Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Tajawal', // Use a suitable Arabic font
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CV'),
        backgroundColor: Colors.purple,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Header section
          _Name(
              firstName: 'Najm',
              lastName: 'Algoami',
              imagePath: 'assets/images/hack.png'),

          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _skill(
                      thTitle: 'Summary',
                      f: 'A desinger',
                      s: 'with a Team for',
                      t: 'learning',
                      fo: 'web- devlopment '),
                  _skill(
                      thTitle: 'Skill',
                      f: 'Speak English',
                      s: 'Web Desinger',
                      t: 'Teacher',
                      fo: 'Fashion Desnger '),
                  Divider(
                    color: Colors.black,
                    thickness: 4,
                  ),
                  _skill(
                      thTitle: 'Language',
                      f: 'Arabic',
                      s: 'English',
                      t: 'russian',
                      fo: 'British'),
                ],
              ),
              VerticalDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Experience(
                      title: 'Experience',
                      company: 'Ypaython',
                      location: 'Sana\'a - Hadah st',
                      dates: '2000 - persent',
                      description: 'Graet'),
                  _Contact(
                      phone: '780186436',
                      email: 'najmnajm7801@gmail.com',
                      address: 'Yemen Sana\'a'),
                  Divider(
                    color: Colors.black,
                    thickness: 4,
                  ),
                  _skill(
                      thTitle: 'Language',
                      f: 'Arabic',
                      s: 'English',
                      t: 'Italy',
                      fo: 'Spain'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Name extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String imagePath;

  const _Name({
    required this.firstName,
    required this.lastName,
    required this.imagePath,
  });

  String get $imagePath {
    return imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage($imagePath),
          ),
          Text(
            '$firstName $lastName',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _Experience extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String dates;
  final String description;

  const _Experience({
    required this.title,
    required this.company,
    required this.location,
    required this.dates,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
          Text(
            '$company, \n$location',
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            dates,
          ),
          const SizedBox(height: 10),
          Text(
            description,
          ),
        ],
      ),
    );
  }
}

class _skill extends StatelessWidget {
  final String thTitle;
  final String? f;
  final String? s;
  final String? t;
  final String? fo;

  const _skill({
    required this.thTitle,
    this.f,
    this.s,
    this.t,
    this.fo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            thTitle,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
          Text(
            '• $f',
          ),
          Text(
            '• $s',
          ),
          Text(
            '• $t',
          ),
          Text(
            '• $fo',
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

class _Contact extends StatelessWidget {
  final String _title = 'Contant';
  final String? phone;
  final String? email;
  final String? address;

  const _Contact(
      {required this.phone, required this.email, required this.address});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
          Row(
            children: [
              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.blueAccent,
                  ),
                  Icon(
                    Icons.place,
                    color: Colors.redAccent,
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('+967 $phone'),
                  Text('$email'),
                  Text(
                    '$address',
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
