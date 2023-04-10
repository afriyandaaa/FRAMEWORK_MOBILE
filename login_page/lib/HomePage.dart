import 'package:flutter/material.dart';

import 'main.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> places = [
    {
      'name': 'CANDI BOROBUDUR',
      'image': 'assets/borobudur.jpg',
      'description':
          'Dibangun pada abad ke-9, Candi Borobudur sekarang menjadi magnet yang mampu menarik jutaan wisatawan setiap tahun.'
    },
    {
      'name': 'CANDI PRAMBANAN',
      'image': 'assets/prambanan.jpg',
      'description':
          'Candi Prambanan dibangun pada abad ke-9. Menjulang setinggi 47 meter dengan ornamen yang mengagumkan, kecantikan candi Hindu ini tak tertandingi. Candi Prambanan terletak 17 km ke arah timur dari pusat Kota Jogja dan bisa dijangkau dengan bus Trans Jogja.'
    },
    {
      'name': 'MALIOBORO',
      'image': 'assets/malioboro.jpg',
      'description':
          'Malioboro adalah jantung Kota Jogja. Tak heran bila banyak penginapan murah dekat Malioboro, meskipun sekarang banyak hotel berbintang. Apa saja tempat wisata dan hotel dekat Malioboro? Temukan info lengkapnya di sini.'
    },
    {
      'name': 'HEHA SKY VIEW',
      'image': 'assets/heha.jpg',
      'description':
          'HeHa Sky View sangat populer dan bisa dijangkau dalam 30 menit saja dari Kota Jogja. HeHa Sky View berisi tempat selfie, food stall, dan resto. Tempatnya sangat instagramable, banyak spot foto keren dengan pemandangan langit dan Kota Jogja dari ketinggian'
    },
    {
      'name': 'HEHA OCEAN VIEW',
      'image': 'assets/heha1.jpg',
      'description':
          'HeHa Ocean View adalah tempat wisata kekinian yang sangat populer dengan banyak spot foto keren berlatar belakang laut. HeHa Ocean View bisa dijangkau dalam 1,5 jam dari Kota Jogja.'
    },
    {
      'name': 'TUGU JOGJA',
      'image': 'assets/tugu.jpg',
      'description':
          'Tugu Jogja memendam makna filosofis tentang semangat perlawanan atas penjajahan dan kini menjadi landmark yang sangat lekat dengan Kota Jogja. Ada juga tradisi memeluk atau mencium tugu ini ketika lulus kuliah.'
    },
    {
      'name': 'OBELIX HILLS',
      'image': 'assets/obelix.jpg',
      'description':
          'Obelix Hills adalah tempat wisata kekinian dengan pemandangan sunset dari ketinggian, resto, dan 30 spot foto. Obelix Hills bisa dijangkau dalam 1 jam dari Kota Jogja.'
    },
    // other places
  ];
  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetails(
                    place: places[index],
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        places[index]['image'],
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          places[index]['name'],
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlaceDetails extends StatelessWidget {
  final Map<String, dynamic> place;

  const PlaceDetails({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place['name']),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                place['image'],
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  place['description'],
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
