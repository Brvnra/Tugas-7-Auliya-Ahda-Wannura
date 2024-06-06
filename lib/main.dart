import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'RUSMIATI',
    'BUDI',
    'SITI',
    'ANDI',
    'LINA',
  ];
  var listWarna = [
    const Color.fromARGB(255, 176, 39, 39),
    const Color.fromARGB(255, 39, 176, 58),
    const Color.fromARGB(255, 39, 58, 176),
    const Color.fromARGB(255, 176, 176, 39),
    const Color.fromARGB(255, 176, 39, 176),
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.cyan[50],
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            offset: Offset.fromDirection(-15, -53),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Apa kabar',
            textDirection: TextDirection.ltr,
          ),
          Text(
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length],
            ),
          ),
        ],
      ),
    );
  }
}

class TeksUtama extends StatefulWidget {
  @override
  _TeksUtamaState createState() => _TeksUtamaState();
}

class _TeksUtamaState extends State<TeksUtama> {
  var listNama = [
    'Auliya Ahda Wannura',
    'Rusmiati',
    'Eki Nurul',
    'Linda Senja',
    'Nura',
  ];
  var listWarna = [
    Color.fromARGB(255, 2, 187, 162),
    Color.fromARGB(255, 112, 97, 247),
    Color.fromARGB(255, 97, 2, 116),
    Color.fromARGB(255, 236, 125, 236),
    Color.fromARGB(255, 238, 62, 77),
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo Dunia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.cyan[50],
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5,
                    offset: Offset.fromDirection(-15, 53),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Apa kabar',
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    listNama[index % listNama.length],
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: listWarna[index % listWarna.length],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              tooltip: 'Random',
              child: Icon(Icons.refresh),
              onPressed: incrementIndex,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Halo Dunia',
    home: TeksUtama(),
  ));
}