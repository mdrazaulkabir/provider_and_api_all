import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_and_api_all/api_using_provider/counter_provider1.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});
  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserProvider1>().fetchPost();
  }
  @override
  Widget build(BuildContext context) {
    final userProvider1=Provider.of<UserProvider1>(context);
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Api Call",
          style: TextStyle(
            color: Colors.redAccent,
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount:userProvider1.allUserlist.length ,
          itemBuilder: (context,itemIndex){
        return ListTile(
          leading: Text(userProvider1.allUserlist[itemIndex].id.toString()),
          title: Text(userProvider1.allUserlist[itemIndex].name.toString()),
        );
      }),
    );
  }
}
