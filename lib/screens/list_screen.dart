import 'package:flutter/material.dart';
import 'package:game_todo/models/memo.dart';

final List<Memo> memos = [
  Memo(
      id: '1',
      title: '메모1',
      content: '내용',
      createdTime: DateTime(2024, 12, 22, 12, 00, 00))
];

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Writer'),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          )
        ],
      ),
      body: GridView.builder(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          itemCount: memos.length,
          itemBuilder: (_, int index) => GestureDetector(
                onTap: () {},
                child: Text(memos[index].title),
              )),
    );
  }
}
