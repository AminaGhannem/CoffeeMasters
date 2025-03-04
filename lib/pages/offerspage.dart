import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Wrap(
      children: const [
        Offer(
          title: "Amina",
          description: "Hello world",
        ),
        Offer(
          title: "Amina",
          description: "Hello world",
        ),
        Offer(
          title: "Amina",
          description: "Hello world",
        ),
        Offer(
          title: "Amina",
          description: "Hello world",
        ),
      ],
    );
  }
}

class Offer extends StatelessWidget {
  //properties
  final String title;
  final String description;
  const Offer({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 7,
          color: Colors.amber.shade50,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Container(
                    color: Colors.amber.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  )),
                ),
                Center(
                  child: Container(
                    color: Colors.amber.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
