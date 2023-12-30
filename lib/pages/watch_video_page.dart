import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class WatchVideoPage extends StatefulWidget {
  const WatchVideoPage({super.key});

  @override
  State<WatchVideoPage> createState() => _WatchVideoPageState();
}

class _WatchVideoPageState extends State<WatchVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('ポイ活アプリ'),
          actions: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 20),
              child: Text(
                '$totalpoint',
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              '5ポイント獲得',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    totalpoint = totalpoint + 5;
                  });
                },
                child: const Text(
                  '動画を視聴',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
            ),
            const Text(
              'ポイント獲得が2倍に',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isMultipuly = true;
                  });
                },
                child: Text(
                  '動画を視聴',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ]),
        ));
  }
}
