import 'package:flutter/material.dart';
import 'package:day1/recipe.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: "Recipe App rebound",
      theme: theme.copyWith(
          colorScheme: theme.colorScheme
              .copyWith(primary: Colors.amber, secondary: Colors.black)),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  Widget buildCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: [
            Image(
              image: NetworkImage(recipe.imageurl),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              recipe.label,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palatino'),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe Recap"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RecipeDetail(recipe: Recipe.samples[index]);
                      }))
                    },
                child: buildCard(Recipe.samples[index]));
          },
        ),
      ),
    );
  }
}
