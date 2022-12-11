import 'package:day1/screens/widgets/plantCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> options = [
    'All',
    'Indoor',
    'Outdoor',
    'Popular',
    'Trending',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 32.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 300,
                    child: Text(
                      'Find Your Favriotes Plant',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 40,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        40,
                      ),
                      border: Border.all(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.search,
                        size: 24,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 32.0,
              ),
              height: 140,
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 38,
                      horizontal: 12,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          '30% OFF',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '02-23 July',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: -50,
                    child: Image.network(
                      'https://www.pngmart.com/files/22/Plant-PNG.png',
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                top: 10.0,
              ),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Chip(
                        backgroundColor: Colors.transparent,
                        side: BorderSide(
                          color: Colors.grey.shade500,
                        ),
                        label: Text(
                          options[i],
                        ),
                      ),
                    );
                  },
                  itemCount: options.length,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: PlantCard(name: 'Plant name $i'),
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
