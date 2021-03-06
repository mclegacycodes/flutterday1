import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label)),
      body: Column(children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Image(image: NetworkImage(widget.recipe.imageurl)),
        ),
        const SizedBox(height: 4,),
        Text(widget.recipe.label, style: const  TextStyle(fontSize: 18),)
      ]),
    );
  }
}
