import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3DB2FF),
        leading: Icon(Icons.menu),
        title: Text('Page title'),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView(children: [
        Image.network(
            'https://miro.medium.com/max/2000/1*Ot8MGVCiZSZc0wGWJ0-eMg.png'),
        Text(
          '#1 Belajar Flutter untuk Pemula',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
        ),
        TextButton(
          onPressed: () {
            // Respond to button press
          },
          child: Text(
            "By: Abdul Aziz Permana",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          child: Text(
              '''Sejak tahun 2019 lalu Flutter telah menjadi topik hangat di tengah kalangan mobile developer.
Flutter sendiri merupakan Software Development Kit (SDK) yang bisa membantu developer dalam membuat aplikasi mobile cross platform.
Ada banyak aplikasi dari brand terkenal yang dibuat dengan Flutter. Sebut saja Alibaba, ebay, hingga Google Ads.
Hal tersebut membuat banyak developer yang akhirnya tertarik untuk mencoba teknologi yang dikembangkan pertama kali oleh Google pada tahun 2017 lalu itu.
Semakin penasaran dengan Flutter dan apa keunggulannya dibandingkan framework cross platform lainnya? 
Melansir dari Altexsoft, Flutter adalah teknologi open source dari Google yang bisa digunakan untuk membuat aplikasi Android dan iOS.
Sempat disebutkan di atas bahwa Flutter adalah SDK sehingga pastinya sudah dilengkapi dengan fitur yang berguna untuk mengembangkan aplikasi lintas platform.
Misalnya saja rendering engine, widget yang sudah siap pakai, API pengujian dan integrasi, hingga command-line tools.
Meskipun ada teknologi yang serupa misalnya React Native hingga Xamarin, tapi developer tetap memperbincangkan Flutter karena kemudahan yang ditawarkan.
Salah satu hal yang menjadi faktor mengapa teknologi yang satu ini disukai adalah kemudahan dalam membuat aplikasi hanya dengan satu basis kode saja.
Hal itu sesuai dengan klaim Flutter yang ditulis di laman resminya. Mereka menyebutkan bahwa Flutter adalah perangkat UI untuk membuat aplikasi yang indah untuk mobile, web, dan desktop dari satu basis kode saja.
Jika ingin mengembangkan aplikasi menggunakan Flutter, maka kamu harus terlebih dahulu memahami bahasa pemrograman Dart.
Bahasa tersebut dibuat oleh Google pada tahun 2011 lalu dan popularitasnya semakin meningkat selama beberapa tahun terakhir.
Dart sendiri berfokus pada pengembangan front-end sehingga bisa dimanfaatkan untuk membuat aplikasi mobile dan web. ''',
              style: TextStyle(fontSize: 16)),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(Icons.arrow_forward, size: 18),
          label: Text("Selanjutnya"),
        ),
        OutlinedButton.icon(
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(Icons.arrow_back, size: 18),
          label: Text("Sebelumnya"),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF3DB2FF),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text("Profile"),
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
