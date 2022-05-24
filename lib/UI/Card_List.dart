import 'package:flutter/material.dart';
import 'package:space_x/Services/CallApi.dart';
import 'package:space_x/Models/Launch.dart';
import 'package:space_x/UI/Widgets/Card.dart';

class card_list extends StatefulWidget {
  card_list({Key? key}) : super(key: key);

  @override
  State<card_list> createState() => _card_listState();
}

class _card_listState extends State<card_list> {
  late List<Launch> _launches; //declaramos una lista
  bool _isLoading = true;

  @override
  void initState() {
    
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _launches = await LaunchApi.getLaunch();
    setState(() {
      _isLoading = false;
    });

   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor : Colors.white,
          title: const Text("Space X", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),)),
        body: _isLoading 
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _launches.length,
                itemBuilder: (context, index) {
                  return  CardInfo(
                    
                      name: _launches[index].name,
                      image: _launches[index].image,
                      date: _launches[index].date,
                      details: _launches[index].details,
                      flightnumber: _launches[index].flightnumber,
                  );
                     
                },
              ));
  }
}

