import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WQM App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DataPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  double _tds = 0;
  double _temp = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startFetchingData();
  }

  void _startFetchingData() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _fetchData();
    });
  }

  Future<void> _fetchData() async {
    http
        .get(Uri.parse(
            'https://trspe-bec09-default-rtdb.asia-southeast1.firebasedatabase.app/json'))
        .then((response) {
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        setState(() {
          _tds = double.parse(jsonData['TDS'].toString());
          _temp = double.parse(jsonData['Temp'].toString());
        });
      } else {
        throw Exception('Failed to fetch data');
      }
    }).catchError((error) {});

    // // Now initiate navigation back, even if the data hasn't been fetched yet
    // Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Quality Monitoring App'),
        backgroundColor: Colors.blue[200],
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   margin: const EdgeInsets.only(
            //     top: 30,
            //     bottom: 20,
            //     left: 20,
            //     right: 20,
            //   ),
            //   width: 100,
            //   child: Image.asset('assets/images/health.png'),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   "Welcome " + user.emai!,
                //   style: const TextStyle(fontSize: 24),
                // ),
                // const SizedBox(height: 16),
                Text(
                  'TDS: $_tds ppm',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 16),
                Text(
                  'Temperature: $_temp C',
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
