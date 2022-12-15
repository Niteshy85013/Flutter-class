import 'package:flutter/material.dart';

class Listtilescreen extends StatefulWidget {
  const Listtilescreen({super.key});

  @override
  State<Listtilescreen> createState() => _ListtilescreenState();
}

class _ListtilescreenState extends State<Listtilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Detail')),
      ),
      body: Column(
        children: [
          ListTile(
              leading: const Icon(Icons.verified_user),
              title: const Text('Nitesh yadav'),
              subtitle: const Text('Kathmandu, Nepal'),
              trailing: Wrap(
                spacing: 8,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                ],
              )),
        ],
      ),
    );
  }
}
