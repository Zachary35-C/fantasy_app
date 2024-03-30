import 'package:flutter/material.dart';

import '../models/leagues.dart';
import '../services/remote_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Leagues>? leagues;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data from API
    getData();
  }

  getData() async {
    leagues = (await RemoteServices().getLeagues()) as List<Leagues>?; 
    if(leagues != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: const Color.fromARGB(244, 9, 250, 1),
        elevation: 15,
        title: const Text('Fantasy App', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),), 
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: leagues?.length,
          itemBuilder: (context, index) {
          return Text(leagues![index].leaguesGet, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),);
        },),
      ),
    );
  }
  }