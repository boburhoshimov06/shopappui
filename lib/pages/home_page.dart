import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listView = [
    'assets/images/ic_image1.jpeg',
    'assets/images/ic_image2.jpeg',
    'assets/images/ic_image3.jpeg',
    'assets/images/ic_image4.jpeg',
    'assets/images/ic_image5.jpeg',
    'assets/images/ic_image6.jpeg',
  ];

  Widget cellOfList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Apple Products'),
        backgroundColor: Colors.yellow,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.yellow.shade800,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("6")),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          //#header
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/ic_image2.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.01),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Lifestyle Sale',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(color: Colors.grey.shade900),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          //#body
          Expanded(
            child: GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: _listView.map((item) => cellOfList(item)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
