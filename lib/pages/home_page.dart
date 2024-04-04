import 'package:flutter/material.dart';

import 'widgets/top_news_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Positioned(
                        left: 80,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffffbba8),
                          ),
                          child: const Text(
                            textAlign: TextAlign.center,
                            '9',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffa8072),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'News',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Trending',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfffa8072),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                textAlign: TextAlign.start,
                'A crypto first? What happens when a blockchain like Terra dies',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Top News',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 3,
                    color: const Color(0xfffa8072),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: 2,
                    height: 3,
                    color: const Color(0xfffa8072),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: 2,
                    height: 3,
                    color: const Color(0xfffa8072),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: 2,
                    height: 3,
                    color: const Color(0xfffa8072),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TopNewsCard(
                title: 'Top 10 applications of Web 3.0',
                description:
                    'The transparency that is ensured in Web 3.0 can help in reaping long-term profits by...',
              ),
              const SizedBox(
                height: 20,
              ),
              const TopNewsCard(
                title: 'FDA authorizes Pfizer\'s',
                description:
                    'The U.S. Food and Drug Administration has authorized a booster dose of the Pfizer...',
              ),
              const SizedBox(
                height: 20,
              ),
              const TopNewsCard(
                title: 'McConnell, when asked, fails',
                description:
                    'Mitch McConnell was asked repeatedly about his views of "replacement theory...',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.auto_graph_rounded),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.splitscreen),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.document_scanner),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.video_camera_back),
            label: '',
          ),
        ],
      ),
    );
  }
}
