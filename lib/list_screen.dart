import 'package:flutter/material.dart';

class NearbyWorkerListItem {
  final String name;
  final String avatarUrl;
  final double distance;
  final int rating;
  final String category;

  NearbyWorkerListItem(
      {required this.name,
      required this.avatarUrl,
      required this.distance,
      required this.rating,
      required this.category});

  static where(bool Function(dynamic mockedList) param0) {}
}

final List<NearbyWorkerListItem> mockedList = [
  NearbyWorkerListItem(
    name: 'Paulo',
    avatarUrl:
        'https://static.wikia.nocookie.net/boliverso/images/b/b8/Fotoclassicaguinalingua.jpg/revision/latest?cb=20230520191354&path-prefix=pt-br',
    distance: 1.0,
    rating: 5,
    category: 'p',
  ),
  NearbyWorkerListItem(
    name: 'Jailson',
    avatarUrl:
        'https://avaazdo.s3.amazonaws.com/c4bf51b585c5bdfe0f5e8c8308572e56.png',
    distance: 1.0,
    rating: 5,
    category: 'e',
  )
];

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
          itemBuilder: (context, index) {
            final worker = mockedList[index];
            return ListTile(
              leading:
                  CircleAvatar(foregroundImage: NetworkImage(worker.avatarUrl)),
              title: Text(worker.name),
              subtitle: Text("${worker.distance}km"),
              trailing: Text("${worker.rating} de 5"),
            );
          },
          itemCount: mockedList.length),
    );
  }
}
