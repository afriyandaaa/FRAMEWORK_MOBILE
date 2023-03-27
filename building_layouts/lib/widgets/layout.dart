//memanggil material dari program main.dart
import 'package:flutter/material.dart';

class Building extends StatelessWidget {
  const Building({super.key});

  @override
  Widget build(BuildContext context) {
    //kanfass Scaffold
    return Scaffold(
      //appbar berisi {icon,Text}
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.arrow_back),
            SizedBox(width: 75),
            Text("Flutter layout Demo"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          //image mengambil gambar dari internet
          const Image(
            image: NetworkImage(
              "https://picsum.photos/536/354",
            ),
            fit: BoxFit.cover,
            width: 600,
            height: 240,
          ),
          // titleSection berisi{container,row,expanded,column,icon}
          Container(
            padding: EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          "Oeschine Lake Campround",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          "Kanderstag Switzerland",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red[900],
                ),
                const SizedBox(width: 10),
                const Text(
                  "9.999",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Bootom {call,route,share} berisi(column,container,text)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(Icons.call, color: Colors.blue),
                  Container(
                    child: const Text(
                      "CALL",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                          height: 2),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.route_outlined, color: Colors.blue),
                  Container(
                    child: const Text(
                      "ROUTE",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                          height: 2),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.favorite, color: Colors.blue),
                  Container(
                    child: const Text(
                      "FAVORITE",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                          height: 2),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.share, color: Colors.blue),
                  Container(
                    child: const Text(
                      "SHARE",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                          height: 2),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Textsection berisi {container,text}
          Container(
            padding: const EdgeInsets.all(32),
            child: const Text(
              "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities  enjoyed here include rowing, and riding the summer toboggan run.",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
      // Bootom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, //penetapan tab awal
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        // label atau judul dinon aktifkan
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
