import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const FunnyQuotesApp());
}

class FunnyQuotesApp extends StatelessWidget {
  const FunnyQuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lookpar Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<String> quoteList = [
    'เจ็บแล้วจำคือคนเจ็บแล้วทนคือใครก็ได้ที่ไม่ใช่ผม',
    'ถ้าเจอคนที่ถูกใจกว่าพร้อมกว่าไปได้เลยนะมาไกลได้แค่นี้แหละ',
    'ถ้าไม่รักอะแล้วมาทำน่ารักใส่ทำไมวะ',
    'คนเก่าเขามาดีเรามันแค่คนธรรมดาเขาเป็นคนมีหน้ามีตาคนธรรมดาหรือจะไปสู้คนทำมาดี',
    'กระเพราผัดโดยคนหัวใจยังว่างผัดให้แล้วอย่างทิ้งขว้างกันนะจ๊ะเด็กโง่',
    'ฟ้าแง้มแผ่นดินงัดดวงจะชี้ชัดกับคนใกล้ชิด',
    'ฉลามชอบงับคุณแต่เขาไม่ชอบมึงงับ',
  ];
  var quote = quoteList[0];
  static const List<Color> colorList = [
    Colors.green,
    Colors.pinkAccent,
    Colors.cyan,
  ];
  var color = colorList[0];

  void handleClickGo() {
    setState(() {
      var rand = Random();
      var randomIndex = rand.nextInt(quoteList.length);
      quote = quoteList[randomIndex];

      var randc = Random();
      var randomColors = randc.nextInt(colorList.length);
      color = colorList[randomColors];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('คำคมจากอาจารย์คง')),
      floatingActionButton: FloatingActionButton(
        child: Text('สุ่ม'),
        onPressed: handleClickGo,
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              quote,
              style:  TextStyle(
                  color: color,
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,

            ),
          )),
    );
  }
}