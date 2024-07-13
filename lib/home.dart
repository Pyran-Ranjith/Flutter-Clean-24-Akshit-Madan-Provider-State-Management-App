// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:fc_24_akshit_madan_provider_state_management_app/list_provider.dart';
import 'package:fc_24_akshit_madan_provider_state_management_app/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<int> numbers = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // int last = numbers.last;
          // setState(() {
          //   numbers.add(last + 1);
          // });
        },
      ),
      appBar: AppBar(),
      builder: Consumer<NumbersListProvider>(
        // builder: (BuildContext context, numbersProviderModel, Widget? child) {  },
        child: SizedBox(
          child: Column(
            children: [
              Center(
                  child: Text(numbersProviderModel.last.toString(),
                      style: TextStyle(
                        fontSize: 50,
                      ))),
              Expanded(
                child: ListView.builder(
                    itemCount: numbersProviderModel.length,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return Text(numbersProviderModel[index].toString(),
                          style: TextStyle(
                            fontSize: 30,
                          ));
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Second(numbers: numbersProviderModel)));
                  },
                  child: Text('Second'))
            ],
          ),
        ),
      ),
    );
  }
}
