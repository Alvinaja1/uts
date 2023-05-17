import 'package:flutter/material.dart';
import 'package:utssaya/drawer/navigasidrawer.dart';
import 'package:utssaya/detail/detailpagehome.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> itemList = [
    {
      'image': 'https://picsum.photos/300/200?random=1',
      'title': 'BELANJA,JAJAN,ATAU JALAN?',
      'description': 'Seperti Pepatah : Pisau harus diasah agar tetap tajam. Liburan sejenak akan mengasah ketajaman Anda dalam melakukan segala pekerjaan,Belanja adalah satu-satunya olahraga yang aku butuhkan',
    },
    {
      'image': 'https://picsum.photos/300/200?random=2',
      'title': 'BELANJA,JAJAN,ATAU JALAN?',
      'description': 'Seperti Pepatah : Pisau harus diasah agar tetap tajam. Liburan sejenak akan mengasah ketajaman Anda dalam melakukan segala pekerjaan,Belanja adalah satu-satunya olahraga yang aku butuhkan',
    },
    {
      'image': 'https://picsum.photos/300/200?random=3',
      'title': 'BELANJA,JAJAN,ATAU JALAN?',
      'description': 'Seperti Pepatah : Pisau harus diasah agar tetap tajam. Liburan sejenak akan mengasah ketajaman Anda dalam melakukan segala pekerjaan,Belanja adalah satu-satunya olahraga yang aku butuhkan',
    },
    {
      'image': 'https://picsum.photos/300/200?random=4',
      'title': 'BELANJA,JAJAN,ATAU JALAN?',
      'description': 'Seperti Pepatah : Pisau harus diasah agar tetap tajam. Liburan sejenak akan mengasah ketajaman Anda dalam melakukan segala pekerjaan,Belanja adalah satu-satunya olahraga yang aku butuhkan',
    },
    {
      'image': 'https://picsum.photos/300/200?random=5',
      'title': 'BELANJA,JAJAN,ATAU JALAN?',
      'description': 'Seperti Pepatah : Pisau harus diasah agar tetap tajam. Liburan sejenak akan mengasah ketajaman Anda dalam melakukan segala pekerjaan,Belanja adalah satu-satunya olahraga yang aku butuhkan',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alvins TRAVEL & SHOP'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: PageView.builder(
        itemCount: itemList.length,
        itemBuilder: (BuildContext context, int index) {
          final item = itemList[index];
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          image: item['image'],
                          title: item['title'],
                          description: item['description'],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 450.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(item['image']),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  item['title'],
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(item['description']
                ),
              ],
            ),
            
          );
        },
      ),
      drawer: NavigationDrawerWidget(),
    );
    
  }
}


