import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            height: 80,
            margin: const EdgeInsets.only(
              bottom: 24,
            ),
            color: Colors.lightBlue[300],
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 30,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 45,
                  ),
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.only(left: 150),
                  color: Colors.orange,
                ),
                Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Container(
            width: 375,
            height: 140,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            padding: const EdgeInsets.all(14),
            color: Colors.pink[400],
            child: Row(
              children: [
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  color: Colors.blue[300],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 190,
                      height: 30,
                      color: Colors.blue[300],
                    ),
                    Container(
                      width: 100,
                      height: 20,
                      color: Colors.blue[300],
                    ),
                    Container(
                      width: 100,
                      height: 20,
                      color: Colors.blue[300],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 375,
            height: 140,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            padding: const EdgeInsets.all(14),
            color: Colors.pink[400],
            child: Row(
              children: [
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  color: Colors.blue[300],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 190,
                      height: 30,
                      color: Colors.blue[300],
                    ),
                    Container(
                      width: 100,
                      height: 20,
                      color: Colors.blue[300],
                    ),
                    Container(
                      width: 100,
                      height: 20,
                      color: Colors.blue[300],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 375,
            height: 140,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            padding: const EdgeInsets.all(14),
            color: Colors.pink[400],
            child: Row(
              children: [
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  color: Colors.blue[300],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 190,
                      height: 30,
                      color: Colors.blue[300],
                    ),
                    Container(
                      width: 100,
                      height: 20,
                      color: Colors.blue[300],
                    ),
                    Container(
                      width: 100,
                      height: 20,
                      color: Colors.blue[300],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
