import 'package:flutter/cupertino.dart';

class ExplorePage extends StatefulWidget {

  const ExplorePage({super.key});
  @override
  State<StatefulWidget> createState() => _ExplorePageState();

}

class _ExplorePageState extends State<ExplorePage>{

  @override
  Widget build(BuildContext context) {
    return const Text("Explore Page",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),);
  }

}