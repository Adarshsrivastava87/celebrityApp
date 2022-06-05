import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/LVdemo.dart/celebrity_detail.dart';
import 'package:flutter_application_1/services/celebrity_services.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final celebs = CelebService().getCelebs();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My favourite Celebrities'),
        ),
        body: ListView.builder(
          itemCount: celebs.length,
          itemBuilder: (context, index) {
            return Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              color: const Color.fromARGB(255, 65, 69, 71),
              child: GestureDetector(
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(celebs[index].imageUrl),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      celebs[index].celebName,
                      style: const TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onTap: () {
                  var celeb = celebs[index];
                  Navigator.pushNamed(context, CelebDetails.routeName,
                      arguments: celeb);
                },
              ),
            );
          },
        ));
  }
}
