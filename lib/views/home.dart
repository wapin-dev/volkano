import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('VOLKANO'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              alignment: Alignment.center,
              // color: Colors.red,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage('assets/images/volcano.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: 3,
                alignment: Alignment.center,
                color: Colors.yellow,
                child: Column(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
