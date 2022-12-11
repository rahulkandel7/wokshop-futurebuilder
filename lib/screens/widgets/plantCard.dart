import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({required this.name, super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 212, 207, 205),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 12.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 20,
            right: 20,
            child: Text(
              "RS 39",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 50,
            top: 30,
            child: Image.network(
              'https://www.pngmart.com/files/22/Plant-PNG.png',
              height: 200,
            ),
          ),
          Positioned(
            top: 80,
            left: 10,
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          1000,
                        ),
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Add To Cart',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
