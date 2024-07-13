// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> numbers = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          int last = numbers.last;
          setState(() {
            numbers.add(last + 1);
          });
        },
      ),
      appBar: AppBar(),
      body: SizedBox(
        child: Container(
          child: Column(
            children: [
              Center(
                  child: Text(numbers.last.toString(),
                      style: TextStyle(
                        fontSize: 50,
                      ))),
              Expanded(
                child: ListView.builder(
                    itemCount: numbers.length,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return Text(numbers[index].toString(),
                          style: TextStyle(
                            fontSize: 30,
                          ));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
