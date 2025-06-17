import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_and_api_all/provider/counter_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text(
          "Provider",
          style: TextStyle(
              color: Colors.red,
              fontSize: 29,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Incrememt useing by provide: ${context.watch<CounterProvider>().count}"),
          SizedBox(height: 10,),
          RichText(text:TextSpan(text: 'Increment useing by provider: ',
              children: [TextSpan(text: "${context.watch<CounterProvider>().count},",style: TextStyle(color: Colors.red))])),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterProvider>().increment();
                },
                child: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterProvider>().decrement();
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.blue,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
