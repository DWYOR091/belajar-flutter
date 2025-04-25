import 'package:flutter/material.dart';

//hero widget adalah transisi animasi antar halamanyg terlihat terbangdengan efek mulus ;v
class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "hero1",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Image.asset("assets/images/lake.jpg"),
      ),
    );
  }
}
