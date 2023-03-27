import 'package:flutter/material.dart';

class Building extends StatelessWidget {
  const Building({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          //image
          Container(
            color: Colors.grey[300],
            child: const Image(
              image: NetworkImage(
                "https://picsum.photos/536/354",
              ),
              fit: BoxFit.cover,
              width: 600,
              height: 240,
            ),
          ),
          // titleSection
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
                  Icons.star,
                  color: Colors.red[900],
                ),
                const Text("9.999"),
              ],
            ),
          ),
          // Bootom
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: Colors.blue),
                  Container(
                    child: const Text(
                      "CALL",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.route_outlined, color: Colors.blue),
                  Container(
                    child: const Text(
                      "ROUTE",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share, color: Colors.blue),
                  Container(
                    child: const Text(
                      "SHARE",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Textsection
          Container(
            padding: EdgeInsets.all(32),
            child: Text(
                "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities  enjoyed here include rowing, and riding the summer toboggan run."),
          ),
        ],
      ),
    );
  }
}

