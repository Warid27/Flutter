import 'package:flutter/material.dart';

class ChildThree extends StatelessWidget {
  const ChildThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            // Image.network(
            //   "https://cdn-icons-png.flaticon.com/512/6858/6858504.png",
            //   height: 75,
            //   width: 75,
            // ), // Image.network
            Image.asset(
              "assets/images/avatar_rounded_icon.png",
              height: 75,
              width: 75,
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Al Warid",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Flutter Dev",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "www.github.com/Warid27",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
